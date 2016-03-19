.class public Lcom/cbs/app/view/utils/ImageHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String;

.field private static b:Lcom/d/a/b/d;

.field private static c:Lcom/d/a/b/c;

.field private static d:Lcom/d/a/b/c;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const v3, 0x7f0201e4

    const/4 v2, 0x1

    .line 25
    const-class v0, Lcom/cbs/app/view/utils/ImageHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cbs/app/view/utils/ImageHelper;->a:Ljava/lang/String;

    .line 36
    invoke-static {}, Lcom/d/a/b/d;->a()Lcom/d/a/b/d;

    move-result-object v0

    sput-object v0, Lcom/cbs/app/view/utils/ImageHelper;->b:Lcom/d/a/b/d;

    .line 37
    new-instance v0, Lcom/d/a/b/c$a;

    invoke-direct {v0}, Lcom/d/a/b/c$a;-><init>()V

    invoke-virtual {v0, v2}, Lcom/d/a/b/c$a;->a(Z)Lcom/d/a/b/c$a;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/d/a/b/c$a;->b(Z)Lcom/d/a/b/c$a;

    move-result-object v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v0, v1}, Lcom/d/a/b/c$a;->a(Landroid/graphics/Bitmap$Config;)Lcom/d/a/b/c$a;

    move-result-object v0

    sget-object v1, Lcom/d/a/b/a/d;->e:Lcom/d/a/b/a/d;

    invoke-virtual {v0, v1}, Lcom/d/a/b/c$a;->a(Lcom/d/a/b/a/d;)Lcom/d/a/b/c$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/d/a/b/c$a;->d()Lcom/d/a/b/c;

    move-result-object v0

    sput-object v0, Lcom/cbs/app/view/utils/ImageHelper;->c:Lcom/d/a/b/c;

    .line 42
    new-instance v0, Lcom/d/a/b/c$a;

    invoke-direct {v0}, Lcom/d/a/b/c$a;-><init>()V

    invoke-virtual {v0, v2}, Lcom/d/a/b/c$a;->a(Z)Lcom/d/a/b/c$a;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/d/a/b/c$a;->b(Z)Lcom/d/a/b/c$a;

    move-result-object v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v0, v1}, Lcom/d/a/b/c$a;->a(Landroid/graphics/Bitmap$Config;)Lcom/d/a/b/c$a;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/d/a/b/c$a;->b(I)Lcom/d/a/b/c$a;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/d/a/b/c$a;->c(I)Lcom/d/a/b/c$a;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/d/a/b/c$a;->a(I)Lcom/d/a/b/c$a;

    move-result-object v0

    sget-object v1, Lcom/d/a/b/a/d;->e:Lcom/d/a/b/a/d;

    invoke-virtual {v0, v1}, Lcom/d/a/b/c$a;->a(Lcom/d/a/b/a/d;)Lcom/d/a/b/c$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/d/a/b/c$a;->d()Lcom/d/a/b/c;

    move-result-object v0

    sput-object v0, Lcom/cbs/app/view/utils/ImageHelper;->d:Lcom/d/a/b/c;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;DF)Ljava/lang/String;
    .locals 5

    .prologue
    .line 85
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 87
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 90
    invoke-virtual {v0}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 91
    const-string v2, "base/files/"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 93
    const/high16 v2, 0x43200000    # 160.0f

    div-float v2, p3, v2

    float-to-double v2, v2

    mul-double/2addr v2, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-int v2, v2

    .line 94
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "/thumbnails/photos/w"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 95
    const-string v2, "http://wwwimage.cbsstatic.com"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    :goto_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 98
    :catch_0
    move-exception v0

    .line 99
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Thumbnailer Path exception:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/MalformedURLException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;I)Ljava/lang/String;
    .locals 4

    .prologue
    .line 164
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 166
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 167
    invoke-virtual {v0}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 168
    const-string v2, "base/files/"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 169
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "/thumbnails/videos/w"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 171
    const-string v2, "http://wwwimage.cbsstatic.com"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 178
    :goto_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 174
    :catch_0
    move-exception v0

    .line 175
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Thumbnailer Path exception:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/MalformedURLException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 53
    const/4 v0, 0x0

    .line 56
    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 58
    invoke-virtual {v1}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 59
    const-string v2, "base/files/"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 61
    const-wide/high16 v2, 0x4069000000000000L    # 200.0

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-int v2, v2

    .line 62
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "http://wwwimage.cbsstatic.com/thumbnails/"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/w"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-h"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-c1:1"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 71
    :goto_0
    return-object v0

    .line 66
    :catch_0
    move-exception v1

    .line 67
    sget-object v2, Lcom/cbs/app/view/utils/ImageHelper;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "error: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/MalformedURLException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 4

    .prologue
    .line 139
    const/4 v0, 0x0

    .line 141
    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 142
    invoke-virtual {v1}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 143
    const-string v2, "base/files/"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 144
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "http://wwwimage.cbsstatic.com"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 151
    :goto_0
    return-object v0

    .line 147
    :catch_0
    move-exception v1

    .line 148
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Thumbnailer Path exception:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/MalformedURLException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 2

    .prologue
    const v1, 0x7f0201e6

    .line 262
    const/4 v0, 0x1

    invoke-static {p0, p1, v1, v1, v0}, Lcom/cbs/app/view/utils/ImageHelper;->a(Ljava/lang/String;Landroid/widget/ImageView;IIZ)V

    .line 263
    return-void
.end method

.method public static a(Ljava/lang/String;Landroid/widget/ImageView;I)V
    .locals 3

    .prologue
    .line 357
    sget-object v0, Lcom/cbs/app/view/utils/ImageHelper;->b:Lcom/d/a/b/d;

    if-eqz v0, :cond_0

    .line 358
    sget-object v0, Lcom/cbs/app/view/utils/ImageHelper;->b:Lcom/d/a/b/d;

    sget-object v1, Lcom/cbs/app/view/utils/ImageHelper;->c:Lcom/d/a/b/c;

    new-instance v2, Lcom/cbs/app/view/utils/ImageHelper$2;

    invoke-direct {v2, p1, p2}, Lcom/cbs/app/view/utils/ImageHelper$2;-><init>(Landroid/widget/ImageView;I)V

    invoke-virtual {v0, p0, v1, v2}, Lcom/d/a/b/d;->a(Ljava/lang/String;Lcom/d/a/b/c;Lcom/d/a/b/f/a;)V

    .line 373
    :cond_0
    return-void
.end method

.method public static a(Ljava/lang/String;Landroid/widget/ImageView;II)V
    .locals 1

    .prologue
    .line 251
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, p3, v0}, Lcom/cbs/app/view/utils/ImageHelper;->a(Ljava/lang/String;Landroid/widget/ImageView;IIZ)V

    .line 253
    return-void
.end method

.method public static a(Ljava/lang/String;Landroid/widget/ImageView;IIZ)V
    .locals 6

    .prologue
    .line 291
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Lcom/cbs/app/view/utils/ImageHelper;->a(Ljava/lang/String;Landroid/widget/ImageView;IIZLcom/d/a/b/f/c;)V

    .line 293
    return-void
.end method

.method private static a(Ljava/lang/String;Landroid/widget/ImageView;IIZLcom/d/a/b/f/c;)V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 313
    new-instance v0, Lcom/d/a/b/c$a;

    invoke-direct {v0}, Lcom/d/a/b/c$a;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/d/a/b/c$a;->b(I)Lcom/d/a/b/c$a;

    move-result-object v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v0, v1}, Lcom/d/a/b/c$a;->a(Landroid/graphics/Bitmap$Config;)Lcom/d/a/b/c$a;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/d/a/b/c$a;->a(Z)Lcom/d/a/b/c$a;

    move-result-object v0

    sget-object v1, Lcom/d/a/b/a/d;->e:Lcom/d/a/b/a/d;

    invoke-virtual {v0, v1}, Lcom/d/a/b/c$a;->a(Lcom/d/a/b/a/d;)Lcom/d/a/b/c$a;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/d/a/b/c$a;->b(Z)Lcom/d/a/b/c$a;

    move-result-object v0

    .line 321
    if-eq p2, v2, :cond_0

    .line 322
    invoke-virtual {v0, p2}, Lcom/d/a/b/c$a;->a(I)Lcom/d/a/b/c$a;

    move-result-object v0

    .line 324
    :cond_0
    if-eq p3, v2, :cond_1

    .line 325
    invoke-virtual {v0, p3}, Lcom/d/a/b/c$a;->c(I)Lcom/d/a/b/c$a;

    move-result-object v0

    .line 329
    :cond_1
    invoke-virtual {v0}, Lcom/d/a/b/c$a;->d()Lcom/d/a/b/c;

    move-result-object v0

    .line 332
    if-eqz p5, :cond_2

    .line 333
    sget-object v1, Lcom/cbs/app/view/utils/ImageHelper;->b:Lcom/d/a/b/d;

    invoke-virtual {v1, p0, p1, v0, p5}, Lcom/d/a/b/d;->a(Ljava/lang/String;Landroid/widget/ImageView;Lcom/d/a/b/c;Lcom/d/a/b/f/a;)V

    .line 337
    :goto_0
    return-void

    .line 335
    :cond_2
    sget-object v1, Lcom/cbs/app/view/utils/ImageHelper;->b:Lcom/d/a/b/d;

    invoke-virtual {v1, p0, p1, v0}, Lcom/d/a/b/d;->a(Ljava/lang/String;Landroid/widget/ImageView;Lcom/d/a/b/c;)V

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Landroid/widget/ImageView;Lcom/d/a/b/f/c;)V
    .locals 6

    .prologue
    const v2, 0x7f0201e6

    .line 266
    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move v3, v2

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lcom/cbs/app/view/utils/ImageHelper;->a(Ljava/lang/String;Landroid/widget/ImageView;IIZLcom/d/a/b/f/c;)V

    .line 267
    return-void
.end method

.method public static a(Ljava/lang/String;Lcom/cbs/app/view/ThumbNailView;)V
    .locals 3

    .prologue
    .line 341
    sget-object v0, Lcom/cbs/app/view/utils/ImageHelper;->b:Lcom/d/a/b/d;

    if-eqz v0, :cond_0

    .line 342
    iput-object p0, p1, Lcom/cbs/app/view/ThumbNailView;->a:Ljava/lang/String;

    .line 343
    sget-object v0, Lcom/cbs/app/view/utils/ImageHelper;->b:Lcom/d/a/b/d;

    sget-object v1, Lcom/cbs/app/view/utils/ImageHelper;->c:Lcom/d/a/b/c;

    new-instance v2, Lcom/cbs/app/view/utils/ImageHelper$1;

    invoke-direct {v2, p1}, Lcom/cbs/app/view/utils/ImageHelper$1;-><init>(Lcom/cbs/app/view/ThumbNailView;)V

    invoke-virtual {v0, p0, v1, v2}, Lcom/d/a/b/d;->a(Ljava/lang/String;Lcom/d/a/b/c;Lcom/d/a/b/f/a;)V

    .line 353
    :cond_0
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;ILandroid/widget/ImageView;)V
    .locals 3

    .prologue
    .line 270
    invoke-static {p0, p1, p2}, Lcom/cbs/app/view/utils/ImageHelper;->a(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 273
    sget-object v1, Lcom/cbs/app/view/utils/ImageHelper;->b:Lcom/d/a/b/d;

    sget-object v2, Lcom/cbs/app/view/utils/ImageHelper;->d:Lcom/d/a/b/c;

    invoke-virtual {v1, v0, p3, v2}, Lcom/d/a/b/d;->a(Ljava/lang/String;Landroid/widget/ImageView;Lcom/d/a/b/c;)V

    .line 275
    return-void
.end method

.method public static b(Ljava/lang/String;DF)Ljava/lang/String;
    .locals 5

    .prologue
    .line 116
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 118
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 121
    invoke-virtual {v0}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 122
    const-string v2, "base/files/"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 124
    const/high16 v2, 0x43200000    # 160.0f

    div-float v2, p3, v2

    float-to-double v2, v2

    mul-double/2addr v2, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-int v2, v2

    .line 125
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "/thumbnails/videos/w"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 127
    const-string v2, "http://wwwimage.cbsstatic.com"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    :goto_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 130
    :catch_0
    move-exception v0

    .line 131
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Thumbnailer Path exception:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/MalformedURLException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;I)Ljava/lang/String;
    .locals 3

    .prologue
    .line 222
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 227
    invoke-virtual {v0}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 229
    const-string v1, "base/"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 230
    const-string v1, "files/"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 231
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "http://wwwimage.cbsstatic.com/thumbnails/photos/w"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 233
    :goto_0
    return-object v0

    .line 223
    :catch_0
    move-exception v0

    .line 224
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "MalformedURLException"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/MalformedURLException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 2

    .prologue
    const v1, 0x7f0201e6

    .line 380
    const/4 v0, 0x0

    invoke-static {p0, p1, v1, v1, v0}, Lcom/cbs/app/view/utils/ImageHelper;->a(Ljava/lang/String;Landroid/widget/ImageView;IIZ)V

    .line 382
    return-void
.end method

.method public static b(Ljava/lang/String;Landroid/widget/ImageView;Lcom/d/a/b/f/c;)V
    .locals 6

    .prologue
    const v2, 0x7f020132

    .line 402
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, v2

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lcom/cbs/app/view/utils/ImageHelper;->a(Ljava/lang/String;Landroid/widget/ImageView;IIZLcom/d/a/b/f/c;)V

    .line 404
    return-void
.end method

.method public static c(Ljava/lang/String;I)Ljava/lang/String;
    .locals 3

    .prologue
    .line 237
    const-string v0, "files"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 238
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "http://wwwimage.cbsstatic.com/thumbnails/photos/w"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 240
    return-object v0
.end method

.method public static c(Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 389
    invoke-static {p0, p1, v0, v0, v0}, Lcom/cbs/app/view/utils/ImageHelper;->a(Ljava/lang/String;Landroid/widget/ImageView;IIZ)V

    .line 391
    return-void
.end method
