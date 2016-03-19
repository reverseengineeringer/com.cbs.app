.class public final Lcom/google/android/gms/cast/d$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/cast/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/cast/d;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Content ID cannot be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Lcom/google/android/gms/cast/d;

    invoke-direct {v0, p1}, Lcom/google/android/gms/cast/d;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/cast/d$a;->a:Lcom/google/android/gms/cast/d;

    return-void
.end method


# virtual methods
.method public final a(I)Lcom/google/android/gms/cast/d$a;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/cast/d$a;->a:Lcom/google/android/gms/cast/d;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/cast/d;->a(I)V

    return-object p0
.end method

.method public final a(J)Lcom/google/android/gms/cast/d$a;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/cast/d$a;->a:Lcom/google/android/gms/cast/d;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/cast/d;->a(J)V

    return-object p0
.end method

.method public final a(Lcom/google/android/gms/cast/e;)Lcom/google/android/gms/cast/d$a;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/cast/d$a;->a:Lcom/google/android/gms/cast/d;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/cast/d;->a(Lcom/google/android/gms/cast/e;)V

    return-object p0
.end method

.method public final a(Lcom/google/android/gms/cast/j;)Lcom/google/android/gms/cast/d$a;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/cast/d$a;->a:Lcom/google/android/gms/cast/d;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/cast/d;->a(Lcom/google/android/gms/cast/j;)V

    return-object p0
.end method

.method public final a(Ljava/lang/String;)Lcom/google/android/gms/cast/d$a;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/cast/d$a;->a:Lcom/google/android/gms/cast/d;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/cast/d;->a(Ljava/lang/String;)V

    return-object p0
.end method

.method public final a(Ljava/util/List;)Lcom/google/android/gms/cast/d$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/cast/h;",
            ">;)",
            "Lcom/google/android/gms/cast/d$a;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/cast/d$a;->a:Lcom/google/android/gms/cast/d;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/cast/d;->a(Ljava/util/List;)V

    return-object p0
.end method

.method public final a(Lorg/json/JSONObject;)Lcom/google/android/gms/cast/d$a;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/cast/d$a;->a:Lcom/google/android/gms/cast/d;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/cast/d;->a(Lorg/json/JSONObject;)V

    return-object p0
.end method

.method public final a()Lcom/google/android/gms/cast/d;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/cast/d$a;->a:Lcom/google/android/gms/cast/d;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/d;->h()V

    iget-object v0, p0, Lcom/google/android/gms/cast/d$a;->a:Lcom/google/android/gms/cast/d;

    return-object v0
.end method
