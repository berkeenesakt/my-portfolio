import Image, { StaticImageData } from 'next/image';
import { Card } from './Card';

interface ProfileCardProps {
  name: string;
  title: string;
  description: string;
  imageSrc: string | StaticImageData;
}

export function ProfileCard({ name, title, description, imageSrc }: ProfileCardProps) {
  return (
    <Card withGradient className="flex flex-col md:flex-row items-center gap-6">
      <div className="w-32 h-32 relative z-10">
        <Image
          src={imageSrc}
          alt={name}
          width={128}
          height={128}
          className="rounded-full object-cover"
        />
      </div>
      <div className="flex-1 text-center md:text-left relative z-10">
        <h1 className="text-2xl font-bold mb-2">{name}</h1>
        <h2 className="text-gray-400 mb-4">{title}</h2>
        <p className="text-gray-300">{description}</p>
      </div>
    </Card>
  );
} 