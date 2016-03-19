.class final Lcom/google/android/libraries/cast/companionlibrary/cast/reconnection/ReconnectionService$3;
.super Ljava/util/TimerTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/libraries/cast/companionlibrary/cast/reconnection/ReconnectionService;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/libraries/cast/companionlibrary/cast/reconnection/ReconnectionService;


# direct methods
.method constructor <init>(Lcom/google/android/libraries/cast/companionlibrary/cast/reconnection/ReconnectionService;)V
    .locals 0

    .prologue
    .line 166
    iput-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/reconnection/ReconnectionService$3;->a:Lcom/google/android/libraries/cast/companionlibrary/cast/reconnection/ReconnectionService;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 169
    invoke-static {}, Lcom/google/android/libraries/cast/companionlibrary/cast/reconnection/ReconnectionService;->a()Ljava/lang/String;

    const-string v0, "setUpEndTimer(): stopping ReconnectionService since reached the end of allotted time"

    invoke-static {v0}, Lcom/google/android/libraries/cast/companionlibrary/a/b;->a(Ljava/lang/String;)V

    .line 171
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/reconnection/ReconnectionService$3;->a:Lcom/google/android/libraries/cast/companionlibrary/cast/reconnection/ReconnectionService;

    invoke-static {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/reconnection/ReconnectionService;->b(Lcom/google/android/libraries/cast/companionlibrary/cast/reconnection/ReconnectionService;)V

    .line 172
    return-void
.end method
