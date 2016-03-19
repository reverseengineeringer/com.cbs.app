.class public Lcom/cbs/app/view/InterstitialAdManagerV2;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:Lcom/google/android/gms/ads/a;

.field private static c:Lcom/google/android/gms/ads/doubleclick/d;

.field private static d:I

.field private static e:Landroid/app/Activity;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 20
    const-class v0, Lcom/cbs/app/view/InterstitialAdManagerV2;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cbs/app/view/InterstitialAdManagerV2;->a:Ljava/lang/String;

    .line 21
    new-instance v0, Lcom/cbs/app/view/InterstitialAdManagerV2$1;

    invoke-direct {v0}, Lcom/cbs/app/view/InterstitialAdManagerV2$1;-><init>()V

    sput-object v0, Lcom/cbs/app/view/InterstitialAdManagerV2;->b:Lcom/google/android/gms/ads/a;

    .line 91
    sput-object v1, Lcom/cbs/app/view/InterstitialAdManagerV2;->c:Lcom/google/android/gms/ads/doubleclick/d;

    .line 92
    const/4 v0, 0x1

    sput v0, Lcom/cbs/app/view/InterstitialAdManagerV2;->d:I

    .line 93
    sput-object v1, Lcom/cbs/app/view/InterstitialAdManagerV2;->e:Landroid/app/Activity;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()V
    .locals 1

    .prologue
    .line 102
    const/4 v0, 0x1

    sput v0, Lcom/cbs/app/view/InterstitialAdManagerV2;->d:I

    .line 103
    return-void
.end method

.method public static a(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 97
    const/16 v0, 0x8

    invoke-static {p0, v0}, Lcom/cbs/app/view/InterstitialAdManagerV2;->a(Landroid/app/Activity;I)V

    .line 98
    return-void
.end method

.method public static a(Landroid/app/Activity;I)V
    .locals 2

    .prologue
    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "checkToShowAd: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " counter: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/cbs/app/view/InterstitialAdManagerV2;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 115
    sput-object p0, Lcom/cbs/app/view/InterstitialAdManagerV2;->e:Landroid/app/Activity;

    if-eqz p0, :cond_0

    .line 116
    invoke-static {p0}, Lcom/cbs/app/view/utils/Preferences;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ad not blocked... counter : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v1, Lcom/cbs/app/view/InterstitialAdManagerV2;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 119
    new-instance v0, Lcom/google/android/gms/ads/doubleclick/d;

    sget-object v1, Lcom/cbs/app/view/InterstitialAdManagerV2;->e:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/google/android/gms/ads/doubleclick/d;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/cbs/app/view/InterstitialAdManagerV2;->c:Lcom/google/android/gms/ads/doubleclick/d;

    .line 120
    invoke-static {}, Lcom/cbs/app/manager/StatusManager;->getAdServer()Ljava/lang/String;

    move-result-object v0

    .line 122
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "test"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 123
    sget-object v0, Lcom/cbs/app/view/InterstitialAdManagerV2;->e:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08025d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 128
    :goto_0
    sget-object v1, Lcom/cbs/app/view/InterstitialAdManagerV2;->c:Lcom/google/android/gms/ads/doubleclick/d;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/ads/doubleclick/d;->a(Ljava/lang/String;)V

    .line 130
    sget-object v0, Lcom/cbs/app/view/InterstitialAdManagerV2;->c:Lcom/google/android/gms/ads/doubleclick/d;

    sget-object v1, Lcom/cbs/app/view/InterstitialAdManagerV2;->b:Lcom/google/android/gms/ads/a;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/doubleclick/d;->a(Lcom/google/android/gms/ads/a;)V

    .line 132
    sget v0, Lcom/cbs/app/view/InterstitialAdManagerV2;->d:I

    rem-int/2addr v0, p1

    if-nez v0, :cond_2

    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "load it: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v1, Lcom/cbs/app/view/InterstitialAdManagerV2;->d:I

    rem-int/2addr v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 134
    sget-object v0, Lcom/cbs/app/view/InterstitialAdManagerV2;->c:Lcom/google/android/gms/ads/doubleclick/d;

    new-instance v1, Lcom/google/android/gms/ads/doubleclick/c$a;

    invoke-direct {v1}, Lcom/google/android/gms/ads/doubleclick/c$a;-><init>()V

    invoke-virtual {v1}, Lcom/google/android/gms/ads/doubleclick/c$a;->a()Lcom/google/android/gms/ads/doubleclick/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/doubleclick/d;->a(Lcom/google/android/gms/ads/doubleclick/c;)V

    .line 1107
    :goto_1
    sget v0, Lcom/cbs/app/view/InterstitialAdManagerV2;->d:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/cbs/app/view/InterstitialAdManagerV2;->d:I

    .line 145
    :cond_0
    :goto_2
    return-void

    .line 125
    :cond_1
    sget-object v0, Lcom/cbs/app/view/InterstitialAdManagerV2;->e:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0801f7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 136
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "don\'t load it: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v1, Lcom/cbs/app/view/InterstitialAdManagerV2;->d:I

    rem-int/2addr v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 142
    :cond_3
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/cbs/app/view/utils/Preferences;->a(Landroid/content/Context;Z)V

    goto :goto_2
.end method

.method public static b()V
    .locals 1

    .prologue
    .line 149
    sget-object v0, Lcom/cbs/app/view/InterstitialAdManagerV2;->c:Lcom/google/android/gms/ads/doubleclick/d;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/cbs/app/view/InterstitialAdManagerV2;->c:Lcom/google/android/gms/ads/doubleclick/d;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/doubleclick/d;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 150
    sget-object v0, Lcom/cbs/app/view/InterstitialAdManagerV2;->c:Lcom/google/android/gms/ads/doubleclick/d;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/doubleclick/d;->b()V

    .line 154
    :cond_0
    return-void
.end method

.method static synthetic c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/cbs/app/view/InterstitialAdManagerV2;->a:Ljava/lang/String;

    return-object v0
.end method
