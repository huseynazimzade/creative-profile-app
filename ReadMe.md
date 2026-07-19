# Creative Profile App 🚀

Bu layihə Flutter framework-ü və Dart dili istifadə edilərək hazırlanmış çoxekranlı statik istifadəçi interfeysi (UI) tətbiqidir. Layihə daxilində onboarding, istifadəçi profili və tətbiq ayarları modulları tam responsiv şəkildə yığılmışdır.

## 📱 Tətbiqin Ekran Videosu (Demo)

> **Qeyd:** Tətbiqin real cihazda işləmə və keçid dinamikasını aşağıdakı videodan izləyə bilərsiniz. (Əgər video yüklənməsə, layihənin ana qovluğundakı demo video faylına baxa bilərsiniz).

[Bura telefonla çəkdiyiniz video faylını sürüşdürüb buraxın və ya linkini yapışdırın]

---

## ✨ Layihənin Özəllikləri və Keçilmiş Mərhələlər (Checkpoints)

*   **Ekran Strukturu:** Tətbiq onboarding, profil, ayarlar və profil redaktəsi olmaqla 4 əsas ekrandan ibarətdir. Dizayna tam uyğunluq üçün `Column`, `Row` və `Stack` widget-lərindən istifadə olunmuşdur.
*   **Naviqasiya Arxitekturası:** Ekranlar arası deklarativ və axıcı keçidlər `go_router` paketi ilə reallaşdırılmışdır. Səhifə yığınının (backstack) düzgün idarəsi üçün `context.go()`, `context.push()` və `context.pop()` funksiyalarından istifadə edilmişdir.
*   **Responsiv Layout:** Tətbiqin fərqli ekran ölçülərinə malik cihazlarda problemsiz (overflow xətası olmadan) görünməsi üçün ölçülər `MediaQuery` vasitəsilə dinamik hesablanmışdır.
*   **Təkrar İstifadə Olunan Komponentlər:** Kod təkrarının qarşısını almaq üçün `CustomButton` və `MenuListTile` kimi müstəqil custom widget-lər yaradılmış və tətbiq olunmuşdur.
*   **Kod Keyfiyyəti və Yaddaş İdarəetməsi:** Widget ağacının iç-içə girərək qarışıqlıq yaratmaması üçün kodlar kiçik alt metodlara bölünmüşdür. Adlandırmalarda `camelCase` standartına əməl olunmuş və `TextEditingController` resurslarının yaddaş sızıntısı (memory leak) yaratmaması üçün `dispose` metodu tətbiq edilmişdir.

---

## 🛠️ İstifadə Olunan Paketlər (Dependencies)

*   `go_router` — Deklarativ naviqasiya idarəetməsi üçün.
*   `cupertino_icons` — UI dizaynına uyğun ikon dəstəyi üçün.

---

## 📂 Qovluq Strukturu (Folder Structure)

```text
lib/
├── screens/         # Onboarding, Profile, Settings və Edit Profile ekranları
├── widgets/         # Təkrar istifadə olunan custom widget-lər (CustomButton və s.)
└── main.dart        # Tətbiqin giriş nöqtəsi və GoRouter konfiqurasiyası
