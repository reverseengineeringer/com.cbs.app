.class public Lru/truba/touchgallery/TouchView/FileTouchImageView;
.super Lru/truba/touchgallery/TouchView/UrlTouchImageView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/truba/touchgallery/TouchView/FileTouchImageView$a;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lru/truba/touchgallery/TouchView/UrlTouchImageView;-><init>(Landroid/content/Context;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Lru/truba/touchgallery/TouchView/UrlTouchImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    return-void
.end method


# virtual methods
.method public setUrl(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 44
    new-instance v0, Lru/truba/touchgallery/TouchView/FileTouchImageView$a;

    invoke-direct {v0, p0}, Lru/truba/touchgallery/TouchView/FileTouchImageView$a;-><init>(Lru/truba/touchgallery/TouchView/FileTouchImageView;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lru/truba/touchgallery/TouchView/FileTouchImageView$a;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 45
    return-void
.end method
