.class final Lcom/google/android/libraries/cast/companionlibrary/cast/c$7;
.super Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/libraries/cast/companionlibrary/cast/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/libraries/cast/companionlibrary/cast/c;


# direct methods
.method constructor <init>(Lcom/google/android/libraries/cast/companionlibrary/cast/c;)V
    .locals 0

    .prologue
    .line 1844
    iput-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/c$7;->a:Lcom/google/android/libraries/cast/companionlibrary/cast/c;

    invoke-direct {p0}, Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onEnabledChanged(Z)V
    .locals 1

    .prologue
    .line 1847
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/c$7;->a:Lcom/google/android/libraries/cast/companionlibrary/cast/c;

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->d(Z)V

    .line 1848
    return-void
.end method

.method public final onFontScaleChanged(F)V
    .locals 2

    .prologue
    .line 1858
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/c$7;->a:Lcom/google/android/libraries/cast/companionlibrary/cast/c;

    iget-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/c$7;->a:Lcom/google/android/libraries/cast/companionlibrary/cast/c;

    invoke-static {v1}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->d(Lcom/google/android/libraries/cast/companionlibrary/cast/c;)Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/b;->a()Lcom/google/android/gms/cast/j;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->b(Lcom/google/android/gms/cast/j;)V

    .line 1859
    return-void
.end method

.method public final onLocaleChanged(Ljava/util/Locale;)V
    .locals 1

    .prologue
    .line 1863
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/c$7;->a:Lcom/google/android/libraries/cast/companionlibrary/cast/c;

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->a(Ljava/util/Locale;)V

    .line 1864
    return-void
.end method

.method public final onUserStyleChanged(Landroid/view/accessibility/CaptioningManager$CaptionStyle;)V
    .locals 2

    .prologue
    .line 1853
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/c$7;->a:Lcom/google/android/libraries/cast/companionlibrary/cast/c;

    iget-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/c$7;->a:Lcom/google/android/libraries/cast/companionlibrary/cast/c;

    invoke-static {v1}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->d(Lcom/google/android/libraries/cast/companionlibrary/cast/c;)Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/b;->a()Lcom/google/android/gms/cast/j;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->b(Lcom/google/android/gms/cast/j;)V

    .line 1854
    return-void
.end method
