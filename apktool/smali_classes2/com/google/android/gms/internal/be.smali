.class public final Lcom/google/android/gms/internal/be;
.super Ljava/lang/Object;


# instance fields
.field private final a:J

.field private final b:Ljava/lang/String;

.field private final c:Lcom/google/android/gms/internal/be;


# direct methods
.method public constructor <init>(JLjava/lang/String;Lcom/google/android/gms/internal/be;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/google/android/gms/internal/be;->a:J

    iput-object p3, p0, Lcom/google/android/gms/internal/be;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/be;->c:Lcom/google/android/gms/internal/be;

    return-void
.end method


# virtual methods
.method final a()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/be;->a:J

    return-wide v0
.end method

.method final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/be;->b:Ljava/lang/String;

    return-object v0
.end method

.method final c()Lcom/google/android/gms/internal/be;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/be;->c:Lcom/google/android/gms/internal/be;

    return-object v0
.end method
