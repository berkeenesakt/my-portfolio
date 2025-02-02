import { useRouter } from 'next/router';
import { useEffect, useState, useRef } from 'react';
import { AiOutlineGlobal } from 'react-icons/ai';


export function LanguageSwitcher() {
  const router = useRouter();
  const { locale } = router;
  const [isOpen, setIsOpen] = useState(false);
  const SUPPORTED_LANGUAGES = [{ code: 'tr', label: 'Türkçe' }, { code: 'en', label: 'English' }];
  const menuRef = useRef<HTMLDivElement>(null);
  const changeLanguage = (newLocale: string) => {
    setIsOpen(false);
    const { pathname, asPath, query } = router;
    router.push({ pathname, query }, asPath, { locale: newLocale });
  };

  useEffect(() => {
    const handleClickOutside = (event: MouseEvent) => {
        if (menuRef.current && !menuRef.current.contains(event.target as Node)) {
            setIsOpen(false);
        }
    };

    document.addEventListener('mousedown', handleClickOutside);
    return () => document.removeEventListener('mousedown', handleClickOutside);
}, []);

  return (
    <div className="relative"     ref={menuRef}>
      <button
        onClick={() => setIsOpen(!isOpen)}
        className="flex items-center gap-2 px-3 py-1 rounded-full bg-[#2a2f3d] hover:bg-[#3a3f4d]"
      >
        <AiOutlineGlobal className="text-sm" />
        <span className="text-sm"> {locale === 'en' ? 'EN' : 'TR'}</span>
      </button>

      {isOpen && (
        <div 
          className="absolute z-10 right-0 mt-2 bg-[#2a2f3d] rounded-lg shadow-lg overflow-hidden"
        >
          {SUPPORTED_LANGUAGES.map((lang) => (
            <button
              key={lang.code}
              onClick={() => changeLanguage(lang.code)}
              className="w-full px-4 py-2 text-left hover:bg-[#3a3f4d]"
            >
              <div className="flex items-center gap-2">
                {lang.label}
                {locale === lang.code && <span className="text-sm">●</span>}
              </div>
            </button>
          ))}
        </div>
      )}
    </div>
  );
} 