# İş Takip Sistemi

## Proje Hakkında

Bu proje, ASP.NET MVC çatısı kullanılarak geliştirilmiş kapsamlı bir iş takip sistemidir. Amacı, yöneticiler ve çalışanlar arasındaki iş akışını optimize etmek, görevlerin etkili bir şekilde izlenmesini sağlamak ve düzenli bir çalışma ortamı oluşturmaktır. Sistem, iş atama, iş durumu takibi ve yorum yapma gibi temel işlevleri kullanıcı dostu bir arayüzle sunarak, iş süreçlerinizi daha verimli hale getirmeyi hedefler.

**Temel Hedef:** İşlerin zamanında ve doğru bir şekilde tamamlanmasını sağlamak, yöneticilere ve çalışanlara özel arayüzler aracılığıyla işlerini etkin bir şekilde yönetme imkanı sunmaktır.

## Ekip

*   Emel Odabaşı - 132130011
*   Umut Mert Of - 132230003

## Video Tanıtımı

Projenin işleyişini ve arayüzünü görmek için aşağıdaki video tanıtımını izleyebilirsiniz:

[İş Takip Video.zip](https://github.com/user-attachments/files/18531326/Is.Takip.Video.zip)

**Not:** Video dosyası ZIP formatındadır. İndirip açarak video tanıtımına ulaşabilirsiniz.

## Özellikler

Sistem, farklı kullanıcı ihtiyaçlarına yönelik bir dizi temel özellik sunmaktadır.

### Kullanıcı Rolleri

Sistemde iki ana kullanıcı rolü bulunmaktadır: **Yöneticiler** ve **Çalışanlar**. Her rol, kendine özgü yeteneklere ve arayüze sahiptir.

**Yöneticiler:**

*   Çalışanlara **iş atama** ve atanan işlerin ilerleyişini takip etme.
*   İşlerin **tamamlanma durumlarını denetleme** ve geri bildirimde bulunma.

**Çalışanlar:**

*   Kendilerine **atanan işleri görüntüleme**.
*   İşleri **tamamlama** ve tamamlanan işlere yorum ekleyerek yöneticilere geri bildirim sağlama.

![Kullanıcı Rolleri Arayüzü](https://github.com/user-attachments/assets/eaebf84c-3cb2-4b80-8968-01e6ddcc2b6f)

### Temel İşlevler

*   **İş Atama:** Yöneticiler, çalışanlarına kolayca iş atayabilir ve her iş için başlangıç tarihi, bitiş tarihi ve detaylı açıklama belirtebilir. Bu özellik, işlerin etkin bir şekilde planlanmasını ve takip edilmesini sağlar.

*   **İş Durumu Takibi:** Her işin mevcut durumunu gösteren bir takip sistemi bulunmaktadır. İşler, aşağıdaki durumlara ayrılmıştır:
    *   **Yeni:** İş henüz atanmamış veya çalışmaya başlanmamış durumda.
    *   **Devam Ediyor:** İş üzerinde aktif olarak çalışılmakta.
    *   **Tamamlandı:** İş başarıyla tamamlanmış durumda.
    Bu sayede tüm kullanıcılar işin hangi aşamada olduğunu kolayca takip edebilirler.

    ![İş Durumu Seçenekleri](https://github.com/user-attachments/assets/f1bd0694-7b8f-443b-82d0-7c7622dc1180)

*   **Yorum Sistemi:** Çalışanlar, tamamladıkları işler hakkında geri bildirimlerini ve ek açıklamalarını yorumlar aracılığıyla sisteme ekleyebilirler. Yöneticiler bu yorumlar sayesinde işin tamamlanma süreci ve sonuçları hakkında değerli bilgilere ulaşabilirler.

*   **Kullanıcı Paneli:** Her kullanıcı, kişisel paneline giriş yaparak sadece kendisine ait olan işleri görüntüleyebilir. Bu panelde, atanan işlerin mevcut durumu, tamamlanan işlerin detayları ve yorum ekleme imkanı bulunur. Bu sayede kullanıcılar, kendi görevlerine odaklanabilir ve işlerini daha kolay yönetebilirler.

    ![Kullanıcı Paneli Arayüzü](https://github.com/user-attachments/assets/bcd2c1c1-416b-4ce1-b957-531eb3706152)

## Kullanılan Teknolojiler

Bu proje, modern ve güvenilir web teknolojileri kullanılarak geliştirilmiştir.

Aşağıda kullanılan teknolojilerin bir listesi ve kullanım amaçları bulunmaktadır:

| Teknoloji         | Kullanım Amacı                                                                  |
| ----------------- | ------------------------------------------------------------------------------ |
| **ASP.NET MVC**   | Web tabanlı uygulama geliştirme çatısı                                       |
| **C#**            | Uygulamanın ana programlama dili                                                 |
| **SQL Server**    | Veritabanı yönetimi ve güvenli veri saklama                                    |
| **Entity Framework** | Veritabanı ile nesne yönelimli ilişki (ORM) kurarak veri erişimini kolaylaştırma |
| **Bootstrap**       | Kullanıcı arayüzü tasarımında modern ve duyarlı (responsive) tasarımlar oluşturma |

## Veri Diyagramı

Veri Diyagramı aşağıda gösterilmektedir:

![Veri Diyagramı](https://github.com/user-attachments/assets/c51f91b4-8f28-46cb-a427-ff2054dcc55d)

---
