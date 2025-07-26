(define-map certificates uint {
  owner: principal,
  title: (string-utf8 50),
  issued: (string-utf8 20)
})

(define-public (issue-certificate (cert-id uint) (title (string-utf8 50)) (issued (string-utf8 20)))
  (begin
    (if (is-some (map-get? certificates cert-id))
        (err u400)
        (begin
          (map-set certificates cert-id {
            owner: tx-sender,
            title: title,
            issued: issued
          })
          (ok cert-id)
        )
    )
  )
)

(define-read-only (verify-certificate (cert-id uint))
  (match (map-get? certificates cert-id)
    cert-data (ok cert-data)
    (err u404)
  )
)
