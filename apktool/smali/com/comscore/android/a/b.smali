.class public final Lcom/comscore/android/a/b;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:I

.field private d:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/comscore/android/a/b;->b:Ljava/lang/String;

    iput v0, p0, Lcom/comscore/android/a/b;->c:I

    iput v0, p0, Lcom/comscore/android/a/b;->d:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/comscore/android/a/b;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/comscore/android/a/b;->b:Ljava/lang/String;

    iput p3, p0, Lcom/comscore/android/a/b;->c:I

    iput p4, p0, Lcom/comscore/android/a/b;->d:I

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/comscore/android/a/b;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final b()I
    .locals 1

    iget v0, p0, Lcom/comscore/android/a/b;->c:I

    return v0
.end method

.method public final c()I
    .locals 1

    iget v0, p0, Lcom/comscore/android/a/b;->d:I

    return v0
.end method

.method public final d()Ljava/lang/String;
    .locals 2

    .prologue
    .line 0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1000
    iget v1, p0, Lcom/comscore/android/a/b;->c:I

    .line 0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2000
    iget v1, p0, Lcom/comscore/android/a/b;->d:I

    .line 0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
