import "@/styles/globals.css";
import { GetStaticProps } from "next";
import { serverSideTranslations } from "next-i18next/serverSideTranslations";
import { appWithTranslation } from "next-i18next";
import type { AppProps } from "next/app";

export default appWithTranslation(function App({ Component, pageProps }: AppProps) {
  return <Component {...pageProps} />;
});

export const getStaticProps: GetStaticProps = async ({ locale }) => {
  return {
    props: {
      ...(await serverSideTranslations(locale || 'en', ['common'])),
    },
  };
};
