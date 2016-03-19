.class final Lcom/google/android/gms/cast/a$b$a$3;
.super Lcom/google/android/gms/cast/a$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/cast/a$b$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/google/android/gms/cast/JoinOptions;

.field final synthetic d:Lcom/google/android/gms/cast/a$b$a;


# direct methods
.method constructor <init>(Lcom/google/android/gms/cast/a$b$a;Lcom/google/android/gms/common/api/b;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/cast/JoinOptions;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/cast/a$b$a$3;->d:Lcom/google/android/gms/cast/a$b$a;

    iput-object p3, p0, Lcom/google/android/gms/cast/a$b$a$3;->a:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/cast/a$b$a$3;->b:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/cast/a$b$a$3;->c:Lcom/google/android/gms/cast/JoinOptions;

    invoke-direct {p0, p2}, Lcom/google/android/gms/cast/a$f;-><init>(Lcom/google/android/gms/common/api/b;)V

    return-void
.end method


# virtual methods
.method protected final bridge synthetic a(Lcom/google/android/gms/common/api/a$c;)V
    .locals 3

    .prologue
    .line 0
    check-cast p1, Lcom/google/android/gms/cast/internal/e;

    .line 1000
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/cast/a$b$a$3;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/cast/a$b$a$3;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/cast/a$b$a$3;->c:Lcom/google/android/gms/cast/JoinOptions;

    invoke-virtual {p1, v0, v1, v2, p0}, Lcom/google/android/gms/cast/internal/e;->a(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/cast/JoinOptions;Lcom/google/android/gms/internal/iw$b;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/android/gms/cast/a$b$a$3;->a()V

    goto :goto_0
.end method
