.class final Lcom/cbs/app/cast/CBSVideoCastControllerFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cbs/app/cast/CBSVideoCastControllerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/libraries/cast/companionlibrary/cast/player/a;

.field final synthetic b:Lcom/cbs/app/cast/CBSVideoCastControllerFragment;


# direct methods
.method constructor <init>(Lcom/cbs/app/cast/CBSVideoCastControllerFragment;Lcom/google/android/libraries/cast/companionlibrary/cast/player/a;)V
    .locals 0

    .prologue
    .line 212
    iput-object p1, p0, Lcom/cbs/app/cast/CBSVideoCastControllerFragment$1;->b:Lcom/cbs/app/cast/CBSVideoCastControllerFragment;

    iput-object p2, p0, Lcom/cbs/app/cast/CBSVideoCastControllerFragment$1;->a:Lcom/google/android/libraries/cast/companionlibrary/cast/player/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    .prologue
    .line 218
    return-void
.end method
