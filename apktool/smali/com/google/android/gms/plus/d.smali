.class public final Lcom/google/android/gms/plus/d;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/plus/d$a;
    }
.end annotation


# static fields
.field public static final a:Lcom/google/android/gms/common/api/a$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/a$d",
            "<",
            "Lcom/google/android/gms/plus/internal/d;",
            ">;"
        }
    .end annotation
.end field

.field static final b:Lcom/google/android/gms/common/api/a$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/a$b",
            "<",
            "Lcom/google/android/gms/plus/internal/d;",
            "Lcom/google/android/gms/plus/d$a;",
            ">;"
        }
    .end annotation
.end field

.field public static final c:Lcom/google/android/gms/common/api/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/a",
            "<",
            "Lcom/google/android/gms/plus/d$a;",
            ">;"
        }
    .end annotation
.end field

.field public static final d:Lcom/google/android/gms/common/api/Scope;

.field public static final e:Lcom/google/android/gms/common/api/Scope;

.field public static final f:Lcom/google/android/gms/plus/b;

.field public static final g:Lcom/google/android/gms/plus/c;

.field public static final h:Lcom/google/android/gms/plus/a;

.field public static final i:Lcom/google/android/gms/plus/f;

.field public static final j:Lcom/google/android/gms/plus/e;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/google/android/gms/common/api/a$d;

    invoke-direct {v0}, Lcom/google/android/gms/common/api/a$d;-><init>()V

    sput-object v0, Lcom/google/android/gms/plus/d;->a:Lcom/google/android/gms/common/api/a$d;

    new-instance v0, Lcom/google/android/gms/plus/d$1;

    invoke-direct {v0}, Lcom/google/android/gms/plus/d$1;-><init>()V

    sput-object v0, Lcom/google/android/gms/plus/d;->b:Lcom/google/android/gms/common/api/a$b;

    new-instance v0, Lcom/google/android/gms/common/api/a;

    const-string v1, "Plus.API"

    sget-object v2, Lcom/google/android/gms/plus/d;->b:Lcom/google/android/gms/common/api/a$b;

    sget-object v3, Lcom/google/android/gms/plus/d;->a:Lcom/google/android/gms/common/api/a$d;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/common/api/a;-><init>(Ljava/lang/String;Lcom/google/android/gms/common/api/a$b;Lcom/google/android/gms/common/api/a$d;)V

    sput-object v0, Lcom/google/android/gms/plus/d;->c:Lcom/google/android/gms/common/api/a;

    new-instance v0, Lcom/google/android/gms/common/api/Scope;

    const-string v1, "https://www.googleapis.com/auth/plus.login"

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Scope;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/plus/d;->d:Lcom/google/android/gms/common/api/Scope;

    new-instance v0, Lcom/google/android/gms/common/api/Scope;

    const-string v1, "https://www.googleapis.com/auth/plus.me"

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Scope;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/plus/d;->e:Lcom/google/android/gms/common/api/Scope;

    new-instance v0, Lcom/google/android/gms/internal/kv;

    invoke-direct {v0}, Lcom/google/android/gms/internal/kv;-><init>()V

    sput-object v0, Lcom/google/android/gms/plus/d;->f:Lcom/google/android/gms/plus/b;

    new-instance v0, Lcom/google/android/gms/internal/kw;

    invoke-direct {v0}, Lcom/google/android/gms/internal/kw;-><init>()V

    sput-object v0, Lcom/google/android/gms/plus/d;->g:Lcom/google/android/gms/plus/c;

    new-instance v0, Lcom/google/android/gms/internal/ks;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ks;-><init>()V

    sput-object v0, Lcom/google/android/gms/plus/d;->h:Lcom/google/android/gms/plus/a;

    new-instance v0, Lcom/google/android/gms/internal/ku;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ku;-><init>()V

    sput-object v0, Lcom/google/android/gms/plus/d;->i:Lcom/google/android/gms/plus/f;

    new-instance v0, Lcom/google/android/gms/internal/kt;

    invoke-direct {v0}, Lcom/google/android/gms/internal/kt;-><init>()V

    sput-object v0, Lcom/google/android/gms/plus/d;->j:Lcom/google/android/gms/plus/e;

    return-void
.end method

.method public static a(Lcom/google/android/gms/common/api/b;)Lcom/google/android/gms/plus/internal/d;
    .locals 2

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "GoogleApiClient parameter is required."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/z;->b(ZLjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/b;->e()Z

    move-result v0

    const-string v1, "GoogleApiClient must be connected."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/z;->a(ZLjava/lang/Object;)V

    sget-object v0, Lcom/google/android/gms/plus/d;->c:Lcom/google/android/gms/common/api/a;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/b;->a(Lcom/google/android/gms/common/api/a;)Z

    move-result v0

    const-string v1, "GoogleApiClient is not configured to use the Plus.API Api. Pass this into GoogleApiClient.Builder#addApi() to use this feature."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/z;->a(ZLjava/lang/Object;)V

    sget-object v0, Lcom/google/android/gms/plus/d;->c:Lcom/google/android/gms/common/api/a;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/b;->b(Lcom/google/android/gms/common/api/a;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "GoogleApiClient has an optional Plus.API and is not connected to Plus. Use GoogleApiClient.hasConnectedApi(Plus.API) to guard this call."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    sget-object v0, Lcom/google/android/gms/plus/d;->a:Lcom/google/android/gms/common/api/a$d;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/b;->a(Lcom/google/android/gms/common/api/a$d;)Lcom/google/android/gms/common/api/a$c;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/plus/internal/d;

    :goto_1
    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method
