.class public final Lcom/google/android/gms/internal/ee;
.super Lcom/google/android/gms/internal/eh;


# annotations
.annotation runtime Lcom/google/android/gms/internal/fs;
.end annotation


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/hs;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/hs;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "storePicture"

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/eh;-><init>(Lcom/google/android/gms/internal/hs;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/ee;->a:Ljava/util/Map;

    invoke-interface {p1}, Lcom/google/android/gms/internal/hs;->e()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ee;->b:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ee;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ee;->b:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 6

    .prologue
    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ee;->b:Landroid/content/Context;

    if-nez v0, :cond_0

    const-string v0, "Activity context is not available"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ee;->a(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/o;->e()Lcom/google/android/gms/internal/gw;

    iget-object v0, p0, Lcom/google/android/gms/internal/ee;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/internal/gw;->e(Landroid/content/Context;)Lcom/google/android/gms/internal/ap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ap;->c()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Feature is not supported by the device."

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ee;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ee;->a:Ljava/util/Map;

    const-string v1, "iurl"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v0, "Image url cannot be empty."

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ee;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-static {v0}, Landroid/webkit/URLUtil;->isValidUrl(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid image url: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ee;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 1000
    :cond_3
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    .line 0
    invoke-static {}, Lcom/google/android/gms/ads/internal/o;->e()Lcom/google/android/gms/internal/gw;

    invoke-static {v1}, Lcom/google/android/gms/internal/gw;->c(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Image type not recognized: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ee;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/google/android/gms/ads/internal/o;->e()Lcom/google/android/gms/internal/gw;

    iget-object v2, p0, Lcom/google/android/gms/internal/ee;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/google/android/gms/internal/gw;->d(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-static {}, Lcom/google/android/gms/ads/internal/o;->h()Lcom/google/android/gms/internal/gm;

    move-result-object v3

    sget v4, Lcom/google/android/gms/R$string;->store_picture_title:I

    const-string v5, "Save image"

    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/internal/gm;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-static {}, Lcom/google/android/gms/ads/internal/o;->h()Lcom/google/android/gms/internal/gm;

    move-result-object v3

    sget v4, Lcom/google/android/gms/R$string;->store_picture_message:I

    const-string v5, "Allow Ad to store image in Picture gallery?"

    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/internal/gm;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-static {}, Lcom/google/android/gms/ads/internal/o;->h()Lcom/google/android/gms/internal/gm;

    move-result-object v3

    sget v4, Lcom/google/android/gms/R$string;->accept:I

    const-string v5, "Accept"

    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/internal/gm;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/google/android/gms/internal/ee$1;

    invoke-direct {v4, p0, v0, v1}, Lcom/google/android/gms/internal/ee$1;-><init>(Lcom/google/android/gms/internal/ee;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-static {}, Lcom/google/android/gms/ads/internal/o;->h()Lcom/google/android/gms/internal/gm;

    move-result-object v0

    sget v1, Lcom/google/android/gms/R$string;->decline:I

    const-string v3, "Decline"

    invoke-virtual {v0, v1, v3}, Lcom/google/android/gms/internal/gm;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ee$2;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ee$2;-><init>(Lcom/google/android/gms/internal/ee;)V

    invoke-virtual {v2, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0
.end method
