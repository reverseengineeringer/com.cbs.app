.class final Lcom/cbs/app/view/MainApplication$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nielsen/app/sdk/n;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cbs/app/view/MainApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cbs/app/view/MainApplication;


# direct methods
.method constructor <init>(Lcom/cbs/app/view/MainApplication;)V
    .locals 0

    .prologue
    .line 447
    iput-object p1, p0, Lcom/cbs/app/view/MainApplication$1;->a:Lcom/cbs/app/view/MainApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAppSdkEvent(JILjava/lang/String;)V
    .locals 3

    .prologue
    .line 450
    invoke-static {}, Lcom/cbs/app/view/MainApplication;->f()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onAppSdkEvent timestamp: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " eventDescription: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 453
    packed-switch p3, :pswitch_data_0

    .line 462
    :goto_0
    return-void

    .line 455
    :pswitch_0
    iget-object v0, p0, Lcom/cbs/app/view/MainApplication$1;->a:Lcom/cbs/app/view/MainApplication;

    iget-object v1, p0, Lcom/cbs/app/view/MainApplication$1;->a:Lcom/cbs/app/view/MainApplication;

    invoke-static {v1}, Lcom/cbs/app/view/MainApplication;->a(Lcom/cbs/app/view/MainApplication;)Lcom/nielsen/app/sdk/l;

    invoke-static {}, Lcom/nielsen/app/sdk/l;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cbs/app/view/MainApplication;->a(Lcom/cbs/app/view/MainApplication;Ljava/lang/String;)Ljava/lang/String;

    .line 456
    invoke-static {}, Lcom/cbs/app/view/MainApplication;->f()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "nielsen urlStr: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/cbs/app/view/MainApplication$1;->a:Lcom/cbs/app/view/MainApplication;

    invoke-static {v1}, Lcom/cbs/app/view/MainApplication;->b(Lcom/cbs/app/view/MainApplication;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 457
    iget-object v0, p0, Lcom/cbs/app/view/MainApplication$1;->a:Lcom/cbs/app/view/MainApplication;

    const-string v1, "nielsen_settings_url"

    iget-object v2, p0, Lcom/cbs/app/view/MainApplication$1;->a:Lcom/cbs/app/view/MainApplication;

    invoke-static {v2}, Lcom/cbs/app/view/MainApplication;->b(Lcom/cbs/app/view/MainApplication;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/cbs/app/view/utils/Preferences;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 453
    :pswitch_data_0
    .packed-switch 0x7d1
        :pswitch_0
    .end packed-switch
.end method
