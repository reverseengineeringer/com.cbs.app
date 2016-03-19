.class public final Lcom/google/android/gms/internal/iq;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/cast/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/iq$b;,
        Lcom/google/android/gms/internal/iq$a;,
        Lcom/google/android/gms/internal/iq$c;
    }
.end annotation


# static fields
.field private static final a:Lcom/google/android/gms/cast/internal/l;


# instance fields
.field private b:Lcom/google/android/gms/common/api/a$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/a$d",
            "<",
            "Lcom/google/android/gms/internal/ir;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/hardware/display/VirtualDisplay;

.field private final d:Lcom/google/android/gms/internal/iv;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/cast/internal/l;

    const-string v1, "CastRemoteDisplayApiImpl"

    invoke-direct {v0, v1}, Lcom/google/android/gms/cast/internal/l;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/iq;->a:Lcom/google/android/gms/cast/internal/l;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/common/api/a$d;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/a$d",
            "<",
            "Lcom/google/android/gms/internal/ir;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/iq$1;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/iq$1;-><init>(Lcom/google/android/gms/internal/iq;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/iq;->d:Lcom/google/android/gms/internal/iv;

    iput-object p1, p0, Lcom/google/android/gms/internal/iq;->b:Lcom/google/android/gms/common/api/a$d;

    return-void
.end method

.method static synthetic a()Lcom/google/android/gms/cast/internal/l;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/iq;->a:Lcom/google/android/gms/cast/internal/l;

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/gms/internal/iq;)V
    .locals 3

    .prologue
    .line 0
    .line 1000
    iget-object v0, p0, Lcom/google/android/gms/internal/iq;->c:Landroid/hardware/display/VirtualDisplay;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/iq;->c:Landroid/hardware/display/VirtualDisplay;

    invoke-virtual {v0}, Landroid/hardware/display/VirtualDisplay;->getDisplay()Landroid/view/Display;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/iq;->a:Lcom/google/android/gms/cast/internal/l;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "releasing virtual display: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/iq;->c:Landroid/hardware/display/VirtualDisplay;

    invoke-virtual {v2}, Landroid/hardware/display/VirtualDisplay;->getDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getDisplayId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/cast/internal/l;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/iq;->c:Landroid/hardware/display/VirtualDisplay;

    invoke-virtual {v0}, Landroid/hardware/display/VirtualDisplay;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/iq;->c:Landroid/hardware/display/VirtualDisplay;

    .line 0
    :cond_1
    return-void
.end method

.method static synthetic b(Lcom/google/android/gms/internal/iq;)Lcom/google/android/gms/common/api/a$d;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/iq;->b:Lcom/google/android/gms/common/api/a$d;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/common/api/b;)Lcom/google/android/gms/common/api/c;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/b;",
            ")",
            "Lcom/google/android/gms/common/api/c",
            "<",
            "Lcom/google/android/gms/cast/b$c;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/iq;->a:Lcom/google/android/gms/cast/internal/l;

    const-string v1, "stopRemoteDisplay"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/cast/internal/l;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Lcom/google/android/gms/internal/iq$2;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/iq$2;-><init>(Lcom/google/android/gms/internal/iq;Lcom/google/android/gms/common/api/b;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/b;->b(Lcom/google/android/gms/internal/iw$a;)Lcom/google/android/gms/internal/iw$a;

    move-result-object v0

    return-object v0
.end method
