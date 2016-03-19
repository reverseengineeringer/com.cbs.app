.class final Lcom/cbs/app/view/fragments/settings/AccountUIHelper$17;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/cbs/app/androiddata/ResponseModelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1046
    iput-object p1, p0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$17;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$17;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$17;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$17;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .prologue
    .line 1093
    invoke-static {}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->d()Ljava/lang/String;

    .line 1094
    invoke-static {}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->c()V

    .line 1095
    iget-object v0, p0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$17;->a:Landroid/content/Context;

    invoke-static {}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->i()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$17;->c:Ljava/lang/String;

    const-string v3, "There was an issue creating your account. Please try again later."

    invoke-static {v0, v1, v2, v3}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1096
    iget-object v0, p0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$17;->a:Landroid/content/Context;

    const-string v1, "CBS Create Account"

    const-string v2, "There was an issue creating your account. Please try again later."

    invoke-static {v0, v1, v2}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->f(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1097
    invoke-static {}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->b()V

    .line 1098
    return-void
.end method

.method public final a(Lcom/cbs/app/androiddata/ResponseModel;)V
    .locals 4

    .prologue
    .line 1049
    invoke-static {}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->d()Ljava/lang/String;

    .line 1050
    iget-object v0, p0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$17;->a:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 1051
    if-eqz p1, :cond_3

    instance-of v0, p1, Lcom/cbs/app/view/model/rest/CreateEndpointResponse;

    if-eqz v0, :cond_3

    .line 1052
    check-cast p1, Lcom/cbs/app/view/model/rest/CreateEndpointResponse;

    .line 1053
    invoke-virtual {p1}, Lcom/cbs/app/view/model/rest/CreateEndpointResponse;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1054
    invoke-virtual {p1}, Lcom/cbs/app/view/model/rest/CreateEndpointResponse;->getUserId()J

    move-result-wide v0

    .line 1055
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1056
    iget-object v1, p0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$17;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 1057
    invoke-static {}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->d()Ljava/lang/String;

    .line 1058
    iget-object v2, p0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$17;->a:Landroid/content/Context;

    invoke-static {v2, v0, v1}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1059
    iget-object v0, p0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$17;->a:Landroid/content/Context;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$17;->b:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->a(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;)V

    .line 1060
    iget-object v0, p0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$17;->a:Landroid/content/Context;

    invoke-static {}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->i()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$17;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1089
    :cond_0
    :goto_0
    return-void

    .line 1065
    :cond_1
    iget-object v0, p0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$17;->d:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 1066
    invoke-static {p1}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->a(Lcom/cbs/app/view/model/rest/CreateEndpointResponse;)Ljava/lang/String;

    move-result-object v0

    .line 1070
    :goto_1
    iget-object v1, p0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$17;->a:Landroid/content/Context;

    invoke-static {}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->i()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$17;->c:Ljava/lang/String;

    invoke-static {v1, v2, v3, v0}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1071
    invoke-static {}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->l()Landroid/app/Dialog;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->a(Landroid/app/Dialog;Ljava/lang/String;)V

    .line 1073
    invoke-static {}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->l()Landroid/app/Dialog;

    move-result-object v0

    const v1, 0x7f0f013f

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    .line 1074
    invoke-static {}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->d()Ljava/lang/String;

    .line 1075
    new-instance v1, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$17$1;

    invoke-direct {v1, p0, v0}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$17$1;-><init>(Lcom/cbs/app/view/fragments/settings/AccountUIHelper$17;Landroid/widget/ScrollView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 1068
    :cond_2
    invoke-static {p1}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->b(Lcom/cbs/app/view/model/rest/CreateEndpointResponse;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 1083
    :cond_3
    invoke-static {}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->c()V

    .line 1084
    iget-object v0, p0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$17;->a:Landroid/content/Context;

    invoke-static {}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->i()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$17;->c:Ljava/lang/String;

    const-string v3, "There was an issue creating your account. Please try again later."

    invoke-static {v0, v1, v2, v3}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1085
    iget-object v0, p0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$17;->a:Landroid/content/Context;

    const-string v1, "CBS Create Account"

    const-string v2, "There was an issue creating your account. Please try again later."

    invoke-static {v0, v1, v2}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->f(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1086
    invoke-static {}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->b()V

    goto :goto_0
.end method
