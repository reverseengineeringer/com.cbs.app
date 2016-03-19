.class public final Lru/truba/touchgallery/TouchView/b;
.super Ljava/io/BufferedInputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/truba/touchgallery/TouchView/b$a;
    }
.end annotation


# instance fields
.field protected a:J

.field protected b:J

.field protected c:Lru/truba/touchgallery/TouchView/b$a;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;J)V
    .locals 2

    .prologue
    .line 13
    const/16 v0, 0x2000

    invoke-direct {p0, p1, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 14
    iput-wide p2, p0, Lru/truba/touchgallery/TouchView/b;->a:J

    .line 15
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lru/truba/touchgallery/TouchView/b;->b:J

    .line 16
    return-void
.end method


# virtual methods
.method public final a(Lru/truba/touchgallery/TouchView/b$a;)V
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Lru/truba/touchgallery/TouchView/b;->c:Lru/truba/touchgallery/TouchView/b$a;

    .line 33
    return-void
.end method

.method public final declared-synchronized read([BII)I
    .locals 4

    .prologue
    .line 22
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lru/truba/touchgallery/TouchView/b;->b:J

    int-to-long v2, p3

    add-long/2addr v0, v2

    iput-wide v0, p0, Lru/truba/touchgallery/TouchView/b;->b:J

    .line 23
    iget-object v0, p0, Lru/truba/touchgallery/TouchView/b;->c:Lru/truba/touchgallery/TouchView/b$a;

    if-eqz v0, :cond_0

    .line 25
    iget-object v0, p0, Lru/truba/touchgallery/TouchView/b;->c:Lru/truba/touchgallery/TouchView/b$a;

    iget-wide v2, p0, Lru/truba/touchgallery/TouchView/b;->b:J

    long-to-float v1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float/2addr v1, v2

    iget-wide v2, p0, Lru/truba/touchgallery/TouchView/b;->a:J

    long-to-float v2, v2

    div-float/2addr v1, v2

    invoke-interface {v0, v1}, Lru/truba/touchgallery/TouchView/b$a;->a(F)V

    .line 27
    :cond_0
    invoke-super {p0, p1, p2, p3}, Ljava/io/BufferedInputStream;->read([BII)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    .line 22
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
