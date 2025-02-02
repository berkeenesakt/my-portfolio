import "@/styles/globals.css";
import { GetStaticProps } from "next";
import { serverSideTranslations } from "next-i18next/serverSideTranslations";
import { appWithTranslation } from "next-i18next";
import type { AppProps } from "next/app";
import { useRouter } from 'next/router';
import Head from 'next/head';
import { metadata } from '../locales/metadata';

export default appWithTranslation(function App({ Component, pageProps }: AppProps) {
  const router = useRouter();
  const { locale = 'en' } = router;
  const meta = metadata[locale as keyof typeof metadata];

  return (
    <>
      <Head>
        <title>{meta.title}</title>
        <meta name="description" content={meta.description} />
        <meta property="og:title" content={meta.title} />
        <meta property="og:description" content={meta.description} />
        <meta property="og:type" content="website" />
        <meta property="og:url" content="https://aktumen.com" />
        <meta name="twitter:card" content="summary_large_image" />
        <meta name="twitter:title" content={meta.title} />
        <meta name="twitter:description" content={meta.description} />
      </Head>
      <Component {...pageProps} />
    </>
  );
});

export const getStaticProps: GetStaticProps = async ({ locale }) => {
  return {
    props: {
      ...(await serverSideTranslations(locale || 'en', ['common'])),
    },
  };
};
