.class final Lcom/cbs/app/view/fragments/settings/AccountUIHelper$29;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/cbs/app/androiddata/ResponseModelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cbs/app/view/fragments/settings/AccountUIHelper;
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

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Ljava/lang/String;

.field final synthetic g:Ljava/lang/String;

.field final synthetic h:Ljava/lang/String;

.field final synthetic i:I

.field final synthetic j:I

.field final synthetic k:I

.field final synthetic l:Z

.field final synthetic m:Ljava/lang/String;

.field final synthetic n:Ljava/lang/String;

.field final synthetic o:Ljava/lang/String;

.field final synthetic p:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 2242
    iput-object p1, p0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$29;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$29;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$29;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$29;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$29;->e:Ljava/lang/String;

    iput-object p6, p0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$29;->f:Ljava/lang/String;

    iput-object p7, p0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$29;->g:Ljava/lang/String;

    iput-object p8, p0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$29;->h:Ljava/lang/String;

    iput p9, p0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$29;->i:I

    iput p10, p0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$29;->j:I

    iput p11, p0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$29;->k:I

    iput-boolean p12, p0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$29;->l:Z

    iput-object p13, p0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$29;->m:Ljava/lang/String;

    iput-object p14, p0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$29;->n:Ljava/lang/String;

    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$29;->o:Ljava/lang/String;

    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$29;->p:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    .line 2258
    iget-object v0, p0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$29;->a:Landroid/content/Context;

    const-string v1, "CBS Sign In"

    const-string v2, "There was an issue connecting to our servers. Please try again later."

    invoke-static {v0, v1, v2}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->f(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 2259
    return-void
.end method

.method public final a(Lcom/cbs/app/androiddata/ResponseModel;)V
    .locals 17

    .prologue
    .line 2245
    check-cast p1, Lcom/cbs/app/view/model/rest/AuthStatusEndpointResponse;

    .line 2246
    invoke-virtual/range {p1 .. p1}, Lcom/cbs/app/view/model/rest/AuthStatusEndpointResponse;->isSuccess()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2247
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$29;->a:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$29;->b:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$29;->c:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$29;->d:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$29;->e:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$29;->f:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$29;->g:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$29;->h:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v9, v0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$29;->i:I

    move-object/from16 v0, p0

    iget v10, v0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$29;->j:I

    move-object/from16 v0, p0

    iget v11, v0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$29;->k:I

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$29;->l:Z

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$29;->m:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$29;->n:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$29;->o:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$29;->p:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-static/range {v1 .. v16}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2254
    :cond_0
    :goto_0
    return-void

    .line 2250
    :cond_1
    invoke-static {}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->l()Landroid/app/Dialog;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2251
    invoke-static {}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->l()Landroid/app/Dialog;

    move-result-object v1

    const-string v2, "Enter a valid zip code."

    invoke-static {v1, v2}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->a(Landroid/app/Dialog;Ljava/lang/String;)V

    goto :goto_0
.end method
