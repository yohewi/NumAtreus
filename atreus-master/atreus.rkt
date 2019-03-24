#lang racket

(define cols 12)
(define rows 4)

(define x-offset 20)
(define y-offset 20)

(define spacing 19)
(define angle 10)

(define column-offsets '(8 5 0 6 11 59 59 11 6 0 5 8))

(define (switch-module x y rotation label net-pos net-neg)
  ;; TODO: set timestamps?
  `(module MX_FLIP (layer Front) (tedit 4FD81CDD) (tstamp 543EF801)
    (at ,x ,y ,rotation)
    (path /543DB910) ; TODO: this is not documented; no idea what it does
    (fp_text reference ,label (at 0 3.302 ,rotation) (layer F.SilkS)
             (effects (font (size 1.524 1.778) (thickness 0.254))))
    (fp_line (start -6.35 -6.35) (end 6.35 -6.35)
             (layer F.SilkS) (width 0.381))
    (fp_line (start 6.35 -6.35) (end 6.35 6.35)
             (layer F.SilkS) (width 0.381))
    (fp_line (start 6.35 6.35) (end -6.35 6.35)
             (layer F.SilkS) (width 0.381))
    (fp_line (start -6.35 6.35) (end -6.35 -6.35)
             (layer F.SilkS) (width 0.381))
    (pad 0 np_thru_hole circle (at 0 0) (size 3.9878 3.9878)
         (drill 3.9878)) ; switch hole, no copper
    (pad 0 np_thru_hole circle (at -5.08 0) (size 1.7018 1.7018)
         (drill 1.7018)) ; board-mount hole, no copper
    (pad 0 np_thru_hole circle (at 5.08 0) (size 1.7018 1.7018)
         (drill 1.7018)) ; board-mount hole, no copper
    (pad 1 thru_hole circle (at 2.54 -5.08) (size 2.286 2.286) (drill 1.4986)
         (layers *.Cu *.SilkS *.Mask) ,net-pos)
    (pad 1 thru_hole circle (at 3.81 -2.54) (size 2.286 2.286) (drill 1.4986)
         (layers *.Cu *.SilkS *.Mask) ,net-pos)
    (pad 2 thru_hole circle (at -2.54 -5.08) (size 2.286 2.286) (drill 1.4986)
         (layers *.Cu *.SilkS *.Mask) ,net-neg)
    (pad 2 thru_hole circle (at -3.81 -2.54) (size 2.286 2.286) (drill 1.4986)
         (layers *.Cu *.SilkS *.Mask) ,net-neg)))

(define (diode-module x y rotation label net-pos net-neg)
  `(module DIODE (layer Front) (tedit 4E0F7A99) (tstamp 543EF854)
    (at ,x ,y ,(+ 90 rotation))
    (path /543DB90F)
    (fp_text reference D2:2 (at 0 0 180) (layer F.SilkS) hide
             (effects (font (size 1.016 1.016) (thickness 0.2032))))
    (fp_line (start -1.524 -1.143) (end 1.524 -1.143)
             (layer F.SilkS) (width 0.2032))
    (fp_line (start 1.524 -1.143) (end 1.524 1.143)
             (layer F.SilkS) (width 0.2032))
    (fp_line (start 0 -1.143) (end 0 1.143)
             (layer F.SilkS) (width 0.2032))
    (fp_line (start 0 -1.143) (end -1.524 0)
             (layer F.SilkS) (width 0.2032))
    (fp_line (start -1.524 0) (end 0 1.143)
             (layer F.SilkS) (width 0.2032))
    (fp_line (start 1.524 1.143) (end -1.524 1.143)
             (layer F.SilkS) (width 0.2032))
    (fp_line (start -1.524 1.143) (end -1.524 -1.143)
             (layer F.SilkS) (width 0.2032))
    (fp_line (start -3.81 0) (end -1.6637 0) (layer Back) (width 0.6096))
    (fp_line (start 1.6637 0) (end 3.81 0) (layer Back) (width 0.6096))
    (fp_line (start -3.81 0) (end -1.6637 0) (layer Front) (width 0.6096))
    (fp_line (start 1.6637 0) (end 3.81 0) (layer Front) (width 0.6096))

    (pad 1 thru_hole circle (at -3.81 0 180) (size 1.651 1.651)
         (drill 0.9906) (layers *.Cu *.SilkS *.Mask) ,net-neg)
    (pad 2 thru_hole rect (at 3.81 0 ,rotation) (size 1.651 1.651)
         (drill 0.9906) (layers *.Cu *.SilkS *.Mask) ,net-pos)
    (pad 99 smd rect (at -1.6637 0 ,rotation) (size 0.8382 0.8382)
         (layers Front F.Paste F.Mask))
    (pad 99 smd rect (at -1.6637 0 ,rotation) (size 0.8382 0.8382)
         (layers Back B.Paste B.Mask))
    (pad 99 smd rect (at 1.6637 0 ,rotation) (size 0.8382 0.8382)
         (layers Front F.Paste F.Mask))
    (pad 99 smd rect (at 1.6637 0 ,rotation) (size 0.8382 0.8382)
         (layers Back B.Paste B.Mask))))

(define microcontroller-module
  `(module A_STAR (layer Front) (tedit 4FDC31C8) (tstamp 543EF800)
    (at 134 70 270)
    (path /543EEB02)
    (fp_text value A-STAR (at -3 0 270) (layer F.SilkS)
             (effects (font (size 3.048 2.54) (thickness 0.4572))))
    (fp_line (start -15.24 7.62) (end 10.1 7.62) (layer F.SilkS) (width 0.381))
    (fp_line (start 10.1 7.62) (end 10.1 -7.62) (layer F.SilkS) (width 0.381))
    (fp_line (start 10.1 -7.62) (end -15.24 -7.62) (layer F.SilkS) (width 0.381))

    (pad B5 thru_hole circle (at -13.97 6.35 270) (size 1.7526 1.7526)
         (drill 1.0922) (layers *.Cu *.SilkS *.Mask) (net 7 N-col-2))
    (pad B4 thru_hole circle (at -11.43 6.35 270) (size 1.7526 1.7526)
         (drill 1.0922) (layers *.Cu *.SilkS *.Mask) (net 8 N-col-3))
    (pad E6 thru_hole circle (at -8.89 6.35 270) (size 1.7526 1.7526)
         (drill 1.0922) (layers *.Cu *.SilkS *.Mask) (net 9 N-col-4))
    (pad D7 thru_hole circle (at -6.35 6.35 270) (size 1.7526 1.7526)
         (drill 1.0922) (layers *.Cu *.SilkS *.Mask) (net 5 N-col-0))
    (pad C6 thru_hole circle (at -3.81 6.35 270) (size 1.7526 1.7526)
         (drill 1.0922) (layers *.Cu *.SilkS *.Mask) (net 6 N-col-1))
    (pad D4 thru_hole circle (at -1.27 6.35 270) (size 1.7526 1.7526)
         (drill 1.0922) (layers *.Cu *.SilkS *.Mask) (net 10 N-col-5))

    (pad D0 thru_hole circle (at 1.27 6.35 270) (size 1.7526 1.7526)
         (drill 1.0922) (layers *.Cu *.SilkS *.Mask) (net 1 N-row-0))
    (pad D1 thru_hole circle (at 3.81 6.35 270) (size 1.7526 1.7526)
         (drill 1.0922) (layers *.Cu *.SilkS *.Mask) (net 2 N-row-1))
    (pad D3 thru_hole circle (at 6.35 6.35 270) (size 1.7526 1.7526)
         (drill 1.0922) (layers *.Cu *.SilkS *.Mask) (net 3 N-row-2))
    (pad D2 thru_hole circle (at 8.89 6.35 270) (size 1.7526 1.7526)
         (drill 1.0922) (layers *.Cu *.SilkS *.Mask) (net 4 N-row-3))

    (pad F7 thru_hole circle (at -13.97 -6.35 270) (size 1.7526 1.7526)
         (drill 1.0922) (layers *.Cu *.SilkS *.Mask) (net 13 N-col-8))
    (pad F6 thru_hole circle (at -11.43 -6.35 270) (size 1.7526 1.7526)
         (drill 1.0922) (layers *.Cu *.SilkS *.Mask) (net 12 N-col-7))
    (pad B6 thru_hole circle (at -8.89 -6.35 270) (size 1.7526 1.7526)
         (drill 1.0922) (layers *.Cu *.SilkS *.Mask) (net 11 N-col-6))
    (pad B7 thru_hole circle (at -6.35 -6.35 270) (size 1.7526 1.7526)
         (drill 1.0922) (layers *.Cu *.SilkS *.Mask) (net 15 N-col-10))
    (pad D6 thru_hole circle (at -3.81 -6.35 270) (size 1.7526 1.7526)
         (drill 1.0922) (layers *.Cu *.SilkS *.Mask) (net 14 N-col-9))
    (pad RST thru_hole circle (at -1.27 -6.35 270) (size 1.7526 1.7526)
       (drill 1.0922) (layers *.Cu *.SilkS *.Mask) (net 0 ""))
    (pad GND thru_hole circle (at 6.35 -6.35 270) (size 1.7526 1.7526)
         (drill 1.0922) (layers *.Cu *.SilkS *.Mask) (net 0 ""))))

(define nets
  `((net 0 "")
    (net 1 N-row-0)
    (net 2 N-row-1)
    (net 3 N-row-2)
    (net 4 N-row-3)
    (net 5  N-col-0)
    (net 6  N-col-1)
    (net 7  N-col-2)
    (net 8  N-col-3)
    (net 9  N-col-4)
    (net 10 N-col-5)
    (net 11 N-col-6)
    (net 12 N-col-7)
    (net 13 N-col-8)
    (net 14 N-col-9)
    (net 15 N-col-10)
    ,@(for/list ([s (in-range 42)])
        (list 'net (+ 16 s) (string->symbol (format "N-diode-~s" s))))))

(define (net-class nets)
  (append '(net_class Default "This is the default net class."
            (clearance 0.254)
            (trace_width 0.2032)
            (via_dia 0.889)
            (via_drill 0.635)
            (uvia_dia 0.508)
            (uvia_drill 0.127))
          (for/list ([n nets])
            (list 'add_net (last n)))))

(define (switch row col)
  (let* ([left? (< col 6)]
         [rotation (if left? -10 10)]
         [x (* (+ 1 col) spacing)]
         [y (+ (list-ref column-offsets col) (* spacing row))]
         [hypotenuse (sqrt (+ (* x x) (* y y)))]
         [Θ (atan (/ y x))]
         [Θ′ (- Θ (degrees->radians rotation))]
         [x′ (+ (if left? x-offset 5) (* hypotenuse (cos Θ′)))]
         [y′ (+ (if left? y-offset (+ y-offset 42.885)) (* hypotenuse (sin Θ′)))]
         [label (format "SW~a:~a" col row)]
         [diode (+ row (* col 4))]
         ;; if we try to number nets linearly, kicad segfaults; woo!
         ;; so we re-use the nets we skipped with the missing col 5/6 diodes
         [diode (cond [(> diode 44) (- diode 20)]
                      [(> diode 41) (- diode 21)]
                      [true diode])]
         [net-col (if left? col (- col 1))]
         [diode-net `(net ,(+ 16 diode)
                      ,(string->symbol (format "N-diode-~s" diode)))]
         [column-net `(net ,(+ net-col 5)
                       ,(string->symbol (format "N-col-~s" net-col)))]
         ;; rotate middle keys additional 90° after calculating position
         [rotation (cond [(= 5 col) 80]
                         [(= 6 col) 280]
                         [true rotation])])
    (switch-module x′ y′ rotation label
                   (if left? diode-net column-net)
                   (if left? column-net diode-net))))

(define (diode row col)
  (let* ([left? (< col 6)]
         [rotation (if left? -10 10)]
         [x (* (+ 1 col) spacing)]
         [y (+ (list-ref column-offsets col) (* spacing row))]
         [hypotenuse (sqrt (+ (* x x) (* y y)))]
         [Θ (atan (/ y x))]
         [Θ′ (- Θ (degrees->radians rotation))]
         [x′ (+ (if left? x-offset 5) (* hypotenuse (cos Θ′))
                (if left? 9 -9))]
         [y′ (+ (if left? y-offset (+ y-offset 42.885))
                (* hypotenuse (sin Θ′)))]
         [label (format "D~a:~a" col row)]
         [diode (+ row (* col 4))]
         ;; if we try to number nets linearly, kicad segfaults; woo!
         ;; so we re-use the nets we skipped with the missing col 5/6 diodes
         [diode (cond [(> diode 44) (- diode 20)]
                      [(> diode 41) (- diode 21)]
                      [true diode])]
         [net-row (cond [(= col 5) 2]
                        [(= col 6) 3]
                        [true row])])
    (diode-module x′ y′ rotation label
                  `(net ,(+ 16 diode)
                    ,(string->symbol (format "N-diode-~s" diode)))
                  `(net ,(+ net-row 1)
                    ,(string->symbol (format "N-row-~s" net-row))))))

(define switches+diodes
  (for/list ([col (in-range cols)]
             #:when true
             [row (if (or (= 5 col) (= 6 col))
                      '(0) (in-range rows))])
    (list (switch row col) (diode row col))))

(define edge-cuts
  (for/list [(s '([31 22] [84 22] [127 30] [127 54] [130 54] [130 60] [138 60]
                  [138 54] [141 54] [141 30] [185 22]
                  [237 22] [250 95] [161 112] [107 112] [18 95]))
             (e '([84 22] [127 30] [127 54] [130 54] [130 60] [138 60] [138 54]
                  [141 54] [141 30] [185 22]
                  [237 22] [250 95] [161 112] [107 112] [18 95] [31 22]))]
    `(gr_line (start ,@s) (end ,@e) (angle 90) (layer Edge.Cuts) (width 0.3))))

(define board
  (apply append nets
         (list (net-class nets))
         (list microcontroller-module)
         edge-cuts
         switches+diodes))

(define (write-placement filename)
  (when (file-exists? filename) (delete-file filename))
  (call-with-output-file filename
    (λ (op)
      (display (call-with-input-file "header.rktd"
                 (curry read-string 9999)) op)
      ;; kicad has this terrible bug where it's whitespace-sensitive here =(
      (display "\n" op)
      (for ([f board])
        (pretty-print f op 1))
      (display (call-with-input-file "traces.rktd"
                 (curry read-string 999999)) op)
      (display ")" op))))

(write-placement "atreus.kicad_pcb")
