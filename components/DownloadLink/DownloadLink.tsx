type Props = {
  href: string
  title: string
  description: string
}

export const DownloadLink = ({ href, title, description }: Props) => {
  return (
    <p style={{ marginTop: 24 }}>
      <a
        id="raw-url"
        download
        href={href}
        target="_blank"
        rel="noreferrer"
        className={
          'nx-text-primary-600 nx-underline nx-decoration-from-font [text-underline-position:from-font]'
        }
      >
        {title}
      </a>
      {description}
    </p>
  )
}
