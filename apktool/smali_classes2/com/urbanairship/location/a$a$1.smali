.class final Lcom/urbanairship/location/a$a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/location/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/urbanairship/location/a$a;-><init>(Lcom/urbanairship/location/a;Lcom/urbanairship/location/LocationRequestOptions;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/urbanairship/location/a;

.field final synthetic b:Lcom/urbanairship/location/a$a;


# direct methods
.method constructor <init>(Lcom/urbanairship/location/a$a;Lcom/urbanairship/location/a;)V
    .locals 0

    .prologue
    .line 178
    iput-object p1, p0, Lcom/urbanairship/location/a$a$1;->b:Lcom/urbanairship/location/a$a;

    iput-object p2, p0, Lcom/urbanairship/location/a$a$1;->a:Lcom/urbanairship/location/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/location/Location;)V
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/urbanairship/location/a$a$1;->b:Lcom/urbanairship/location/a$a;

    invoke-virtual {v0, p1}, Lcom/urbanairship/location/a$a;->a(Landroid/location/Location;)V

    .line 182
    return-void
.end method
