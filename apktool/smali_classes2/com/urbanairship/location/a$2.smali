.class final Lcom/urbanairship/location/a$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/api/b$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/urbanairship/location/a;->a()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/concurrent/Semaphore;

.field final synthetic b:Lcom/urbanairship/location/a;


# direct methods
.method constructor <init>(Lcom/urbanairship/location/a;Ljava/util/concurrent/Semaphore;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lcom/urbanairship/location/a$2;->b:Lcom/urbanairship/location/a;

    iput-object p2, p0, Lcom/urbanairship/location/a$2;->a:Ljava/util/concurrent/Semaphore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 0

    .prologue
    .line 97
    return-void
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/urbanairship/location/a$2;->a:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 92
    return-void
.end method
