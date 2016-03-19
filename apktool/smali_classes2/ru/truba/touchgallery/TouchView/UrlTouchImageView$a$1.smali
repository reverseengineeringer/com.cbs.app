.class final Lru/truba/touchgallery/TouchView/UrlTouchImageView$a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lru/truba/touchgallery/TouchView/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/truba/touchgallery/TouchView/UrlTouchImageView$a;->a([Ljava/lang/String;)Landroid/graphics/Bitmap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lru/truba/touchgallery/TouchView/UrlTouchImageView$a;


# direct methods
.method constructor <init>(Lru/truba/touchgallery/TouchView/UrlTouchImageView$a;)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lru/truba/touchgallery/TouchView/UrlTouchImageView$a$1;->a:Lru/truba/touchgallery/TouchView/UrlTouchImageView$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(F)V
    .locals 4

    .prologue
    .line 99
    iget-object v0, p0, Lru/truba/touchgallery/TouchView/UrlTouchImageView$a$1;->a:Lru/truba/touchgallery/TouchView/UrlTouchImageView$a;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Integer;

    const/4 v2, 0x0

    const/high16 v3, 0x42c80000    # 100.0f

    mul-float/2addr v3, p1

    float-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lru/truba/touchgallery/TouchView/UrlTouchImageView$a;->a(Lru/truba/touchgallery/TouchView/UrlTouchImageView$a;[Ljava/lang/Object;)V

    .line 100
    return-void
.end method
