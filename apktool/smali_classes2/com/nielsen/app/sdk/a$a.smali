.class public final Lcom/nielsen/app/sdk/a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nielsen/app/sdk/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/nielsen/app/sdk/a;

.field private b:J

.field private c:Ljava/lang/String;

.field private d:J

.field private e:J

.field private f:J

.field private g:J

.field private h:I


# direct methods
.method public constructor <init>(Lcom/nielsen/app/sdk/a;J)V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 684
    iput-object p1, p0, Lcom/nielsen/app/sdk/a$a;->a:Lcom/nielsen/app/sdk/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 524
    const-wide/16 v0, 0x17

    iput-wide v0, p0, Lcom/nielsen/app/sdk/a$a;->b:J

    .line 547
    const-string v0, ""

    iput-object v0, p0, Lcom/nielsen/app/sdk/a$a;->c:Ljava/lang/String;

    .line 570
    iput-wide v2, p0, Lcom/nielsen/app/sdk/a$a;->d:J

    .line 593
    iput-wide v2, p0, Lcom/nielsen/app/sdk/a$a;->e:J

    .line 619
    iput-wide v2, p0, Lcom/nielsen/app/sdk/a$a;->f:J

    .line 642
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/nielsen/app/sdk/a$a;->g:J

    .line 665
    const/4 v0, 0x0

    iput v0, p0, Lcom/nielsen/app/sdk/a$a;->h:I

    .line 685
    invoke-virtual {p0, p2, p3}, Lcom/nielsen/app/sdk/a$a;->b(J)V

    .line 686
    return-void
.end method

.method public constructor <init>(Lcom/nielsen/app/sdk/a;JIJJJLjava/lang/String;)V
    .locals 13

    .prologue
    .line 680
    iput-object p1, p0, Lcom/nielsen/app/sdk/a$a;->a:Lcom/nielsen/app/sdk/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 524
    const-wide/16 v0, 0x17

    iput-wide v0, p0, Lcom/nielsen/app/sdk/a$a;->b:J

    .line 547
    const-string v0, ""

    iput-object v0, p0, Lcom/nielsen/app/sdk/a$a;->c:Ljava/lang/String;

    .line 570
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/nielsen/app/sdk/a$a;->d:J

    .line 593
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/nielsen/app/sdk/a$a;->e:J

    .line 619
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/nielsen/app/sdk/a$a;->f:J

    .line 642
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/nielsen/app/sdk/a$a;->g:J

    .line 665
    const/4 v0, 0x0

    iput v0, p0, Lcom/nielsen/app/sdk/a$a;->h:I

    move-object v1, p0

    move-wide v2, p2

    move/from16 v4, p4

    move-object/from16 v5, p11

    move-wide/from16 v6, p5

    move-wide/from16 v8, p7

    move-wide/from16 v10, p9

    .line 681
    invoke-direct/range {v1 .. v11}, Lcom/nielsen/app/sdk/a$a;->a(JILjava/lang/String;JJJ)V

    .line 682
    return-void
.end method

.method private a(JILjava/lang/String;JJJ)V
    .locals 1

    .prologue
    .line 704
    iput-wide p9, p0, Lcom/nielsen/app/sdk/a$a;->f:J

    .line 705
    iput-wide p7, p0, Lcom/nielsen/app/sdk/a$a;->e:J

    .line 706
    iput-wide p5, p0, Lcom/nielsen/app/sdk/a$a;->d:J

    .line 708
    iput p3, p0, Lcom/nielsen/app/sdk/a$a;->h:I

    .line 709
    iput-object p4, p0, Lcom/nielsen/app/sdk/a$a;->c:Ljava/lang/String;

    .line 710
    iput-wide p1, p0, Lcom/nielsen/app/sdk/a$a;->b:J

    .line 711
    return-void
.end method


# virtual methods
.method public final a()J
    .locals 2

    .prologue
    .line 522
    iget-wide v0, p0, Lcom/nielsen/app/sdk/a$a;->b:J

    return-wide v0
.end method

.method public final a(J)V
    .locals 1

    .prologue
    .line 629
    iput-wide p1, p0, Lcom/nielsen/app/sdk/a$a;->g:J

    .line 630
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 755
    iget-wide v0, p0, Lcom/nielsen/app/sdk/a$a;->e:J

    iput-wide v0, p0, Lcom/nielsen/app/sdk/a$a;->f:J

    .line 756
    iget-wide v0, p0, Lcom/nielsen/app/sdk/a$a;->d:J

    iput-wide v0, p0, Lcom/nielsen/app/sdk/a$a;->e:J

    .line 758
    invoke-static {}, Lcom/nielsen/app/sdk/w;->j()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/nielsen/app/sdk/a$a;->d:J

    .line 760
    iput-object p1, p0, Lcom/nielsen/app/sdk/a$a;->c:Ljava/lang/String;

    .line 761
    iget v0, p0, Lcom/nielsen/app/sdk/a$a;->h:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/nielsen/app/sdk/a$a;->h:I

    .line 762
    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 545
    iget-object v0, p0, Lcom/nielsen/app/sdk/a$a;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final b(J)V
    .locals 13

    .prologue
    const-wide/16 v6, 0x0

    .line 714
    const/4 v4, 0x0

    const-string v5, ""

    move-object v1, p0

    move-wide v2, p1

    move-wide v8, v6

    move-wide v10, v6

    invoke-direct/range {v1 .. v11}, Lcom/nielsen/app/sdk/a$a;->a(JILjava/lang/String;JJJ)V

    .line 715
    return-void
.end method

.method public final c()J
    .locals 2

    .prologue
    .line 568
    iget-wide v0, p0, Lcom/nielsen/app/sdk/a$a;->d:J

    return-wide v0
.end method

.method public final d()J
    .locals 2

    .prologue
    .line 591
    iget-wide v0, p0, Lcom/nielsen/app/sdk/a$a;->e:J

    return-wide v0
.end method

.method public final e()J
    .locals 2

    .prologue
    .line 616
    iget-wide v0, p0, Lcom/nielsen/app/sdk/a$a;->f:J

    return-wide v0
.end method

.method public final f()J
    .locals 2

    .prologue
    .line 640
    iget-wide v0, p0, Lcom/nielsen/app/sdk/a$a;->g:J

    return-wide v0
.end method

.method public final g()I
    .locals 1

    .prologue
    .line 663
    iget v0, p0, Lcom/nielsen/app/sdk/a$a;->h:I

    return v0
.end method
