export const DownloadLink = ({ href }: { href: string }) => {
  return (
    <p style={{ marginTop: 24 }}>
      <a
        id="raw-url"
        download
        href={href}
        className={
          'nx-text-primary-600 nx-underline nx-decoration-from-font [text-underline-position:from-font]'
        }
      >
        Скачайте файл watchers.xml
      </a>{' '}
      и импортируйте его в Settings | Tools | File Watchers
    </p>
  )
}
