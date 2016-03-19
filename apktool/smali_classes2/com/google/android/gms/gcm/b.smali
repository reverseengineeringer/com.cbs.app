.class public final Lcom/google/android/gms/gcm/b;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lcom/google/android/gms/gcm/b;

.field public static final b:Lcom/google/android/gms/gcm/b;


# instance fields
.field private final c:I

.field private final d:I

.field private final e:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/gcm/b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/gcm/b;-><init>(I)V

    sput-object v0, Lcom/google/android/gms/gcm/b;->a:Lcom/google/android/gms/gcm/b;

    new-instance v0, Lcom/google/android/gms/gcm/b;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/android/gms/gcm/b;-><init>(I)V

    sput-object v0, Lcom/google/android/gms/gcm/b;->b:Lcom/google/android/gms/gcm/b;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/gcm/b;->c:I

    const/16 v0, 0x1e

    iput v0, p0, Lcom/google/android/gms/gcm/b;->d:I

    const/16 v0, 0xe10

    iput v0, p0, Lcom/google/android/gms/gcm/b;->e:I

    return-void
.end method
