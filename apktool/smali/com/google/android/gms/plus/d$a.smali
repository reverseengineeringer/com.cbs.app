.class public final Lcom/google/android/gms/plus/d$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/a$a$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/plus/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/plus/d$a$a;
    }
.end annotation


# instance fields
.field final a:Ljava/lang/String;

.field final b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/plus/d$a;->a:Ljava/lang/String;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/plus/d$a;->b:Ljava/util/Set;

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/plus/d$a;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/plus/d$a$a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/google/android/gms/plus/d$a$a;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/plus/d$a;->a:Ljava/lang/String;

    iget-object v0, p1, Lcom/google/android/gms/plus/d$a$a;->b:Ljava/util/Set;

    iput-object v0, p0, Lcom/google/android/gms/plus/d$a;->b:Ljava/util/Set;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/plus/d$a$a;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/plus/d$a;-><init>(Lcom/google/android/gms/plus/d$a$a;)V

    return-void
.end method
