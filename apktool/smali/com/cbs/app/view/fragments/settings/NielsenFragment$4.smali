.class final Lcom/cbs/app/view/fragments/settings/NielsenFragment$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nielsen/app/sdk/n;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cbs/app/view/fragments/settings/NielsenFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cbs/app/view/fragments/settings/NielsenFragment;


# direct methods
.method constructor <init>(Lcom/cbs/app/view/fragments/settings/NielsenFragment;)V
    .locals 0

    .prologue
    .line 135
    iput-object p1, p0, Lcom/cbs/app/view/fragments/settings/NielsenFragment$4;->a:Lcom/cbs/app/view/fragments/settings/NielsenFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAppSdkEvent(JILjava/lang/String;)V
    .locals 3

    .prologue
    .line 138
    sget-object v0, Lcom/cbs/app/view/fragments/settings/NielsenFragment;->h:Ljava/lang/String;

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

    .line 141
    packed-switch p3, :pswitch_data_0

    .line 155
    :goto_0
    return-void

    .line 143
    :pswitch_0
    sget-object v0, Lcom/cbs/app/view/fragments/settings/NielsenFragment;->h:Ljava/lang/String;

    .line 144
    iget-object v0, p0, Lcom/cbs/app/view/fragments/settings/NielsenFragment$4;->a:Lcom/cbs/app/view/fragments/settings/NielsenFragment;

    iget-object v1, p0, Lcom/cbs/app/view/fragments/settings/NielsenFragment$4;->a:Lcom/cbs/app/view/fragments/settings/NielsenFragment;

    invoke-static {v1}, Lcom/cbs/app/view/fragments/settings/NielsenFragment;->b(Lcom/cbs/app/view/fragments/settings/NielsenFragment;)Lcom/nielsen/app/sdk/l;

    invoke-static {}, Lcom/nielsen/app/sdk/l;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cbs/app/view/fragments/settings/NielsenFragment;->a(Lcom/cbs/app/view/fragments/settings/NielsenFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 145
    sget-object v0, Lcom/cbs/app/view/fragments/settings/NielsenFragment;->h:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "nielsen urlStr: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/cbs/app/view/fragments/settings/NielsenFragment$4;->a:Lcom/cbs/app/view/fragments/settings/NielsenFragment;

    invoke-static {v1}, Lcom/cbs/app/view/fragments/settings/NielsenFragment;->c(Lcom/cbs/app/view/fragments/settings/NielsenFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    iget-object v0, p0, Lcom/cbs/app/view/fragments/settings/NielsenFragment$4;->a:Lcom/cbs/app/view/fragments/settings/NielsenFragment;

    invoke-virtual {v0}, Lcom/cbs/app/view/fragments/settings/NielsenFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "nielsen_settings_url"

    iget-object v2, p0, Lcom/cbs/app/view/fragments/settings/NielsenFragment$4;->a:Lcom/cbs/app/view/fragments/settings/NielsenFragment;

    invoke-static {v2}, Lcom/cbs/app/view/fragments/settings/NielsenFragment;->c(Lcom/cbs/app/view/fragments/settings/NielsenFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/cbs/app/view/utils/Preferences;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 149
    :pswitch_1
    sget-object v0, Lcom/cbs/app/view/fragments/settings/NielsenFragment;->h:Ljava/lang/String;

    .line 150
    iget-object v0, p0, Lcom/cbs/app/view/fragments/settings/NielsenFragment$4;->a:Lcom/cbs/app/view/fragments/settings/NielsenFragment;

    invoke-static {v0}, Lcom/cbs/app/view/fragments/settings/NielsenFragment;->d(Lcom/cbs/app/view/fragments/settings/NielsenFragment;)V

    goto :goto_0

    .line 141
    :pswitch_data_0
    .packed-switch 0x7d0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
