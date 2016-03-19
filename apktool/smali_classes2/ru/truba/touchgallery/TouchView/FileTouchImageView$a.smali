.class public final Lru/truba/touchgallery/TouchView/FileTouchImageView$a;
.super Lru/truba/touchgallery/TouchView/UrlTouchImageView$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/truba/touchgallery/TouchView/FileTouchImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lru/truba/touchgallery/TouchView/FileTouchImageView;


# direct methods
.method public constructor <init>(Lru/truba/touchgallery/TouchView/FileTouchImageView;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lru/truba/touchgallery/TouchView/FileTouchImageView$a;->a:Lru/truba/touchgallery/TouchView/FileTouchImageView;

    invoke-direct {p0, p1}, Lru/truba/touchgallery/TouchView/UrlTouchImageView$a;-><init>(Lru/truba/touchgallery/TouchView/UrlTouchImageView;)V

    return-void
.end method

.method static synthetic a(Lru/truba/touchgallery/TouchView/FileTouchImageView$a;[Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 47
    invoke-virtual {p0, p1}, Lru/truba/touchgallery/TouchView/FileTouchImageView$a;->publishProgress([Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected final varargs a([Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 7

    .prologue
    .line 51
    const/4 v0, 0x0

    aget-object v0, p1, v0

    .line 52
    const/4 v1, 0x0

    .line 54
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 55
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 56
    new-instance v3, Lru/truba/touchgallery/TouchView/b;

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-direct {v3, v0, v4, v5}, Lru/truba/touchgallery/TouchView/b;-><init>(Ljava/io/InputStream;J)V

    .line 57
    new-instance v0, Lru/truba/touchgallery/TouchView/FileTouchImageView$a$1;

    invoke-direct {v0, p0}, Lru/truba/touchgallery/TouchView/FileTouchImageView$a$1;-><init>(Lru/truba/touchgallery/TouchView/FileTouchImageView$a;)V

    invoke-virtual {v3, v0}, Lru/truba/touchgallery/TouchView/b;->a(Lru/truba/touchgallery/TouchView/b$a;)V

    .line 66
    invoke-static {v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 67
    :try_start_1
    invoke-virtual {v3}, Lru/truba/touchgallery/TouchView/b;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 71
    :goto_0
    return-object v0

    .line 69
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

.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 47
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lru/truba/touchgallery/TouchView/FileTouchImageView$a;->a([Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
