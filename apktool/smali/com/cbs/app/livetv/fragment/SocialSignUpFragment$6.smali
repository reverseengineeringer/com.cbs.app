.class final Lcom/cbs/app/livetv/fragment/SocialSignUpFragment$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cbs/app/livetv/fragment/SocialSignUpFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/Calendar;

.field final synthetic b:Lcom/cbs/app/livetv/fragment/SocialSignUpFragment;


# direct methods
.method constructor <init>(Lcom/cbs/app/livetv/fragment/SocialSignUpFragment;Ljava/util/Calendar;)V
    .locals 0

    .prologue
    .line 369
    iput-object p1, p0, Lcom/cbs/app/livetv/fragment/SocialSignUpFragment$6;->b:Lcom/cbs/app/livetv/fragment/SocialSignUpFragment;

    iput-object p2, p0, Lcom/cbs/app/livetv/fragment/SocialSignUpFragment$6;->a:Ljava/util/Calendar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 372
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/SocialSignUpFragment$6;->b:Lcom/cbs/app/livetv/fragment/SocialSignUpFragment;

    iget-object v1, p0, Lcom/cbs/app/livetv/fragment/SocialSignUpFragment$6;->a:Ljava/util/Calendar;

    iget-object v2, p0, Lcom/cbs/app/livetv/fragment/SocialSignUpFragment$6;->b:Lcom/cbs/app/livetv/fragment/SocialSignUpFragment;

    invoke-static {v2}, Lcom/cbs/app/livetv/fragment/SocialSignUpFragment;->d(Lcom/cbs/app/livetv/fragment/SocialSignUpFragment;)Landroid/widget/Spinner;

    move-result-object v2

    iget-object v3, p0, Lcom/cbs/app/livetv/fragment/SocialSignUpFragment$6;->b:Lcom/cbs/app/livetv/fragment/SocialSignUpFragment;

    invoke-static {v3}, Lcom/cbs/app/livetv/fragment/SocialSignUpFragment;->j(Lcom/cbs/app/livetv/fragment/SocialSignUpFragment;)Landroid/widget/Spinner;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/cbs/app/livetv/fragment/SocialSignUpFragment;->a(Lcom/cbs/app/livetv/fragment/SocialSignUpFragment;Ljava/util/Calendar;Landroid/widget/Spinner;Landroid/widget/Spinner;)V

    .line 373
    return-void
.end method
