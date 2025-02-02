import { useTranslation } from 'next-i18next';
import { Card } from './Card';

interface SkillsCardProps {
  title: string;  
  skills: string[];
}

export function SkillsCard({ title, skills }: SkillsCardProps) {
  const { t } = useTranslation();
  return (
    <Card>
      <h2 className="text-xl font-bold mb-4">{title}</h2>
      <div className="flex flex-wrap gap-2">
        {skills.map((skill) => (
          <span
            key={skill}
            className="px-3 py-1 bg-[#2a2f3d] rounded-full text-sm"
          >
            {skill.startsWith("skills.") ? t(skill) : skill}
          </span>
        ))}
      </div>
    </Card>
  );
} 