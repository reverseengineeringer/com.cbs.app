.class public final Lcom/google/ads/a/c;
.super Ljava/lang/Object;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final a:Ljava/util/Date;

.field private final b:Lcom/google/ads/a$a;

.field private final c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Z

.field private final e:Landroid/location/Location;


# direct methods
.method public constructor <init>(Ljava/util/Date;Lcom/google/ads/a$a;Ljava/util/Set;ZLandroid/location/Location;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Date;",
            "Lcom/google/ads/a$a;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;Z",
            "Landroid/location/Location;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/ads/a/c;->a:Ljava/util/Date;

    iput-object p2, p0, Lcom/google/ads/a/c;->b:Lcom/google/ads/a$a;

    iput-object p3, p0, Lcom/google/ads/a/c;->c:Ljava/util/Set;

    iput-boolean p4, p0, Lcom/google/ads/a/c;->d:Z

    iput-object p5, p0, Lcom/google/ads/a/c;->e:Landroid/location/Location;

    return-void
.end method
