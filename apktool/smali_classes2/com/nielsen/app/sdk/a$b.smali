.class public final Lcom/nielsen/app/sdk/a$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nielsen/app/sdk/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/nielsen/app/sdk/a;

.field private b:C

.field private c:I

.field private d:I

.field private e:J

.field private f:Ljava/lang/String;

.field private g:J


# direct methods
.method public constructor <init>(Lcom/nielsen/app/sdk/a;JIIJCLjava/lang/String;)V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 470
    iput-object p1, p0, Lcom/nielsen/app/sdk/a$b;->a:Lcom/nielsen/app/sdk/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 336
    const/16 v0, 0x20

    iput-char v0, p0, Lcom/nielsen/app/sdk/a$b;->b:C

    .line 359
    const/4 v0, -0x1

    iput v0, p0, Lcom/nielsen/app/sdk/a$b;->c:I

    .line 382
    const/4 v0, 0x6

    iput v0, p0, Lcom/nielsen/app/sdk/a$b;->d:I

    .line 405
    iput-wide v2, p0, Lcom/nielsen/app/sdk/a$b;->e:J

    .line 428
    const-string v0, ""

    iput-object v0, p0, Lcom/nielsen/app/sdk/a$b;->f:Ljava/lang/String;

    .line 451
    iput-wide v2, p0, Lcom/nielsen/app/sdk/a$b;->g:J

    .line 471
    iput-char p8, p0, Lcom/nielsen/app/sdk/a$b;->b:C

    .line 472
    iput p4, p0, Lcom/nielsen/app/sdk/a$b;->c:I

    .line 473
    iput-wide p6, p0, Lcom/nielsen/app/sdk/a$b;->e:J

    .line 474
    iput p5, p0, Lcom/nielsen/app/sdk/a$b;->d:I

    .line 475
    iput-object p9, p0, Lcom/nielsen/app/sdk/a$b;->f:Ljava/lang/String;

    .line 476
    iput-wide p2, p0, Lcom/nielsen/app/sdk/a$b;->g:J

    .line 477
    return-void
.end method


# virtual methods
.method public final a()C
    .locals 1

    .prologue
    .line 334
    iget-char v0, p0, Lcom/nielsen/app/sdk/a$b;->b:C

    return v0
.end method

.method public final a(C)V
    .locals 0

    .prologue
    .line 323
    iput-char p1, p0, Lcom/nielsen/app/sdk/a$b;->b:C

    .line 324
    return-void
.end method

.method public final a(J)V
    .locals 1

    .prologue
    .line 392
    iput-wide p1, p0, Lcom/nielsen/app/sdk/a$b;->e:J

    .line 393
    return-void
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 357
    iget v0, p0, Lcom/nielsen/app/sdk/a$b;->c:I

    return v0
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 380
    iget v0, p0, Lcom/nielsen/app/sdk/a$b;->d:I

    return v0
.end method

.method public final d()J
    .locals 2

    .prologue
    .line 403
    iget-wide v0, p0, Lcom/nielsen/app/sdk/a$b;->e:J

    return-wide v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 426
    iget-object v0, p0, Lcom/nielsen/app/sdk/a$b;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final f()J
    .locals 2

    .prologue
    .line 438
    iget-wide v0, p0, Lcom/nielsen/app/sdk/a$b;->g:J

    return-wide v0
.end method
