.class public Lru/truba/touchgallery/TouchView/UrlTouchImageView$a;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/truba/touchgallery/TouchView/UrlTouchImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic b:Lru/truba/touchgallery/TouchView/UrlTouchImageView;


# direct methods
.method public constructor <init>(Lru/truba/touchgallery/TouchView/UrlTouchImageView;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lru/truba/touchgallery/TouchView/UrlTouchImageView$a;->b:Lru/truba/touchgallery/TouchView/UrlTouchImageView;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method static synthetic a(Lru/truba/touchgallery/TouchView/UrlTouchImageView$a;[Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 80
    invoke-virtual {p0, p1}, Lru/truba/touchgallery/TouchView/UrlTouchImageView$a;->publishProgress([Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 7

    .prologue
    .line 84
    const/4 v0, 0x0

    aget-object v0, p1, v0

    .line 85
    const/4 v1, 0x0

    .line 87
    :try_start_0
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 88
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    .line 89
    invoke-virtual {v0}, Ljava/net/URLConnection;->connect()V

    .line 90
    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    .line 91
    invoke-virtual {v0}, Ljava/net/URLConnection;->getContentLength()I

    move-result v0

    .line 92
    new-instance v3, Lru/truba/touchgallery/TouchView/b;

    int-to-long v4, v0

    invoke-direct {v3, v2, v4, v5}, Lru/truba/touchgallery/TouchView/b;-><init>(Ljava/io/InputStream;J)V

    .line 93
    new-instance v0, Lru/truba/touchgallery/TouchView/UrlTouchImageView$a$1;

    invoke-direct {v0, p0}, Lru/truba/touchgallery/TouchView/UrlTouchImageView$a$1;-><init>(Lru/truba/touchgallery/TouchView/UrlTouchImageView$a;)V

    invoke-virtual {v3, v0}, Lru/truba/touchgallery/TouchView/b;->a(Lru/truba/touchgallery/TouchView/b$a;)V

    .line 102
    invoke-static {v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 103
    :try_start_1
    invoke-virtual {v3}, Lru/truba/touchgallery/TouchView/b;->close()V

    .line 104
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 108
    :goto_0
    return-object v0

    .line 106
    :catch_0
    move-exception v0

    move-object v6, v0

    move-object v0, v1

    move-object v1, v6

    :goto_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 80
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lru/truba/touchgallery/TouchView/UrlTouchImageView$a;->a([Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 80
    check-cast p1, Landroid/graphics/Bitmap;

    .line 2113
    if-nez p1, :cond_0

    .line 2115
    iget-object v0, p0, Lru/truba/touchgallery/TouchView/UrlTouchImageView$a;->b:Lru/truba/touchgallery/TouchView/UrlTouchImageView;

    iget-object v0, v0, Lru/truba/touchgallery/TouchView/UrlTouchImageView;->b:Lru/truba/touchgallery/TouchView/TouchImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Lru/truba/touchgallery/TouchView/TouchImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 2116
    iget-object v0, p0, Lru/truba/touchgallery/TouchView/UrlTouchImageView$a;->b:Lru/truba/touchgallery/TouchView/UrlTouchImageView;

    invoke-virtual {v0}, Lru/truba/touchgallery/TouchView/UrlTouchImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lru/truba/touchgallery/R$drawable;->no_photo:I

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2117
    iget-object v1, p0, Lru/truba/touchgallery/TouchView/UrlTouchImageView$a;->b:Lru/truba/touchgallery/TouchView/UrlTouchImageView;

    iget-object v1, v1, Lru/truba/touchgallery/TouchView/UrlTouchImageView;->b:Lru/truba/touchgallery/TouchView/TouchImageView;

    invoke-virtual {v1, v0}, Lru/truba/touchgallery/TouchView/TouchImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 2124
    :goto_0
    iget-object v0, p0, Lru/truba/touchgallery/TouchView/UrlTouchImageView$a;->b:Lru/truba/touchgallery/TouchView/UrlTouchImageView;

    iget-object v0, v0, Lru/truba/touchgallery/TouchView/UrlTouchImageView;->b:Lru/truba/touchgallery/TouchView/TouchImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lru/truba/touchgallery/TouchView/TouchImageView;->setVisibility(I)V

    .line 2125
    iget-object v0, p0, Lru/truba/touchgallery/TouchView/UrlTouchImageView$a;->b:Lru/truba/touchgallery/TouchView/UrlTouchImageView;

    iget-object v0, v0, Lru/truba/touchgallery/TouchView/UrlTouchImageView;->a:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 80
    return-void

    .line 2121
    :cond_0
    iget-object v0, p0, Lru/truba/touchgallery/TouchView/UrlTouchImageView$a;->b:Lru/truba/touchgallery/TouchView/UrlTouchImageView;

    iget-object v0, v0, Lru/truba/touchgallery/TouchView/UrlTouchImageView;->b:Lru/truba/touchgallery/TouchView/TouchImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Lru/truba/touchgallery/TouchView/TouchImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 2122
    iget-object v0, p0, Lru/truba/touchgallery/TouchView/UrlTouchImageView$a;->b:Lru/truba/touchgallery/TouchView/UrlTouchImageView;

    iget-object v0, v0, Lru/truba/touchgallery/TouchView/UrlTouchImageView;->b:Lru/truba/touchgallery/TouchView/TouchImageView;

    invoke-virtual {v0, p1}, Lru/truba/touchgallery/TouchView/TouchImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method protected synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 80
    check-cast p1, [Ljava/lang/Integer;

    .line 1131
    iget-object v0, p0, Lru/truba/touchgallery/TouchView/UrlTouchImageView$a;->b:Lru/truba/touchgallery/TouchView/UrlTouchImageView;

    iget-object v0, v0, Lru/truba/touchgallery/TouchView/UrlTouchImageView;->a:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 80
    return-void
.end method
