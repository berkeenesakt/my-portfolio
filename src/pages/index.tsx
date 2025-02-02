import { Geist } from "next/font/google";
import { useTranslation } from "next-i18next";
import { serverSideTranslations } from "next-i18next/serverSideTranslations";
import Head from "next/head";
import { ProfileCard } from "../components/ProfileCard";
import { SkillsCard } from "../components/SkillsCard";
import { ContactCard } from "../components/ContactCard";
import { WorkExperienceCard } from "../components/WorkExperienceCard";
import { SocialLinksCard } from "../components/SocialLinksCard";
import { LanguageSwitcher } from "../components/LanguageSwitcher";
import profile from "../../public/images/profile.jpeg";
import { socialLinks } from "../data/social_links";
import { workExperiences } from "../data/work_experiences";
import { skills } from "@/data/skills";
const geist = Geist({
  subsets: ["latin"],
});

export default function Home() {
  const { t } = useTranslation();

  return (
    <>
      <Head>
        <title>{t("name")} | {t("title")}</title>
        <meta name="description" content={t("description")} />
      </Head>
      <div className={`${geist.className} min-h-screen bg-[#1a1f2e] text-white p-8`}>
        <div className="max-w-4xl mx-auto space-y-8">
          <div className="flex justify-end">
            <LanguageSwitcher />
          </div>
          
          <ProfileCard
            name={t("name")}
            title={t("title")}
            description={t("description")}
            imageSrc={profile}
          />

          <div className="grid md:grid-cols-2 gap-8">
            <SkillsCard 
              title={t("sections.skills")}
              skills={skills} 
            />
            <ContactCard
              title={t("sections.contact")}
              email="contact@aktumen.com"
              location="Ankara, Türkiye"
            />
          </div>

          <WorkExperienceCard 
            title={t("sections.experience")}
            experiences={workExperiences} 
          />
          <SocialLinksCard title={t("sections.connect")} links={socialLinks} />

          <footer className="text-center text-gray-400 text-sm pt-8">
            {t("footer")}
          </footer>
        </div>
      </div>
    </>
  );
}

export async function getStaticProps({ locale }: { locale: string }) {
  return {
    props: {
      ...(await serverSideTranslations(locale, ["translation"])),
    },
  };
}
