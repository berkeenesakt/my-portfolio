import Image from 'next/image';
import { Card } from './Card';
import { useTranslation } from 'next-i18next';
interface WorkExperience {
  company: string;
  position: string;
  period: string;
  description: string;
  logoSrc: string;
}

interface WorkExperienceCardProps {
  title: string;
  experiences: WorkExperience[];
}

export function WorkExperienceCard({ title, experiences }: WorkExperienceCardProps) {
  const { t } = useTranslation();
  return (
    <Card>
      <h2 className="text-xl font-bold mb-6">{title}</h2>
      <div className="space-y-8">
        {experiences.map((experience, index) => (
          <div key={index} className="flex gap-4">
            <div className="w-[5%] min-w-[48px] rounded-lg">
              <Image
                src={experience.logoSrc}
                alt={experience.company}
                width={48}
                height={48}
                className="object-contain rounded-lg"
              />
            </div>
            <div className="w-[95%]">
              <h3 className="font-bold">{t(experience.position)} - {experience.company}</h3>
              <p className="text-gray-400 text-sm mb-2">{t(experience.period)}</p>
              <p className="text-gray-300">{t(experience.description)}</p>
            </div>
          </div>
        ))}
      </div>
    </Card>
  );
} 