.class final Lcom/urbanairship/location/e$3;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/urbanairship/location/e;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/urbanairship/location/e;


# direct methods
.method constructor <init>(Lcom/urbanairship/location/e;)V
    .locals 0

    .prologue
    .line 146
    iput-object p1, p0, Lcom/urbanairship/location/e$3;->a:Lcom/urbanairship/location/e;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/urbanairship/location/e$3;->a:Lcom/urbanairship/location/e;

    invoke-static {v0}, Lcom/urbanairship/location/e;->b(Lcom/urbanairship/location/e;)V

    .line 150
    return-void
.end method
