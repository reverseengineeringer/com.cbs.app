.class final Lcom/cbs/app/view/fragments/show/videos/VideosFragment$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/cbs/app/view/BackButtonListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cbs/app/view/fragments/show/videos/VideosFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cbs/app/view/fragments/show/videos/VideosFragment;


# direct methods
.method constructor <init>(Lcom/cbs/app/view/fragments/show/videos/VideosFragment;)V
    .locals 0

    .prologue
    .line 275
    iput-object p1, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment$3;->a:Lcom/cbs/app/view/fragments/show/videos/VideosFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final c()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 283
    invoke-static {}, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->j()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "onBack:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment$3;->a:Lcom/cbs/app/view/fragments/show/videos/VideosFragment;

    invoke-static {v2}, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->A(Lcom/cbs/app/view/fragments/show/videos/VideosFragment;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 285
    const/4 v0, 0x0

    .line 287
    iget-object v2, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment$3;->a:Lcom/cbs/app/view/fragments/show/videos/VideosFragment;

    invoke-static {v2}, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->B(Lcom/cbs/app/view/fragments/show/videos/VideosFragment;)Landroid/support/v7/app/AppCompatActivity;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment$3;->a:Lcom/cbs/app/view/fragments/show/videos/VideosFragment;

    invoke-static {v2}, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->C(Lcom/cbs/app/view/fragments/show/videos/VideosFragment;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 288
    sget-boolean v2, Lcom/cbs/app/GlobalConstants;->b:Z

    if-eqz v2, :cond_1

    .line 289
    iget-object v1, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment$3;->a:Lcom/cbs/app/view/fragments/show/videos/VideosFragment;

    invoke-static {v1}, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->D(Lcom/cbs/app/view/fragments/show/videos/VideosFragment;)Landroid/support/v7/app/AppCompatActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/cbs/app/view/utils/Util;->O(Landroid/content/Context;)V

    .line 290
    iget-object v1, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment$3;->a:Lcom/cbs/app/view/fragments/show/videos/VideosFragment;

    invoke-static {v1}, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->E(Lcom/cbs/app/view/fragments/show/videos/VideosFragment;)Landroid/support/v7/app/AppCompatActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/app/AppCompatActivity;->finish()V

    .line 338
    :cond_0
    :goto_0
    :pswitch_0
    return v0

    .line 292
    :cond_1
    iget-object v2, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment$3;->a:Lcom/cbs/app/view/fragments/show/videos/VideosFragment;

    invoke-static {v2}, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->F(Lcom/cbs/app/view/fragments/show/videos/VideosFragment;)Landroid/support/v7/app/AppCompatActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/cbs/app/view/utils/Util;->e(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 293
    iget-object v2, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment$3;->a:Lcom/cbs/app/view/fragments/show/videos/VideosFragment;

    invoke-static {v2}, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->A(Lcom/cbs/app/view/fragments/show/videos/VideosFragment;)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 297
    :pswitch_1
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment$3;->a:Lcom/cbs/app/view/fragments/show/videos/VideosFragment;

    const-string v2, "fragment_show_videos"

    invoke-static {v2}, Lcom/cbs/app/view/utils/Util;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->a(Lcom/cbs/app/view/fragments/show/videos/VideosFragment;Ljava/lang/String;)V

    .line 298
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment$3;->a:Lcom/cbs/app/view/fragments/show/videos/VideosFragment;

    invoke-virtual {v0}, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->g()V

    move v0, v1

    .line 300
    goto :goto_0

    .line 302
    :pswitch_2
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment$3;->a:Lcom/cbs/app/view/fragments/show/videos/VideosFragment;

    invoke-virtual {v0}, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->i()V

    move v0, v1

    .line 304
    goto :goto_0

    .line 306
    :pswitch_3
    invoke-static {}, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->f()V

    move v0, v1

    .line 308
    goto :goto_0

    .line 312
    :cond_2
    iget-object v2, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment$3;->a:Lcom/cbs/app/view/fragments/show/videos/VideosFragment;

    invoke-static {v2}, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->G(Lcom/cbs/app/view/fragments/show/videos/VideosFragment;)Landroid/support/v7/app/AppCompatActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/cbs/app/view/utils/Util;->h(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 313
    invoke-static {}, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->j()Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " On tablet:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment$3;->a:Lcom/cbs/app/view/fragments/show/videos/VideosFragment;

    invoke-static {v3}, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->A(Lcom/cbs/app/view/fragments/show/videos/VideosFragment;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 314
    invoke-static {}, Lcom/cbs/app/visualon/player/CBSPlayer;->y()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 315
    invoke-static {}, Lcom/cbs/app/visualon/player/CBSPlayer;->z()V

    move v0, v1

    .line 316
    goto :goto_0

    .line 318
    :cond_3
    invoke-static {}, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->j()Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Screen in tablet:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment$3;->a:Lcom/cbs/app/view/fragments/show/videos/VideosFragment;

    invoke-static {v3}, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->A(Lcom/cbs/app/view/fragments/show/videos/VideosFragment;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 319
    iget-object v2, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment$3;->a:Lcom/cbs/app/view/fragments/show/videos/VideosFragment;

    invoke-static {v2}, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->A(Lcom/cbs/app/view/fragments/show/videos/VideosFragment;)I

    move-result v2

    packed-switch v2, :pswitch_data_1

    goto :goto_0

    .line 323
    :pswitch_4
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment$3;->a:Lcom/cbs/app/view/fragments/show/videos/VideosFragment;

    invoke-virtual {v0}, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->h()V

    move v0, v1

    .line 325
    goto/16 :goto_0

    .line 327
    :pswitch_5
    invoke-static {}, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->f()V

    move v0, v1

    .line 328
    goto/16 :goto_0

    .line 293
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 319
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public final getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 278
    invoke-static {}, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->j()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
