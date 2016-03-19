.class final Lcom/cbs/app/view/TwitterWebOAuthActivity$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cbs/app/view/TwitterWebOAuthActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cbs/app/view/TwitterWebOAuthActivity;


# direct methods
.method constructor <init>(Lcom/cbs/app/view/TwitterWebOAuthActivity;)V
    .locals 0

    .prologue
    .line 142
    iput-object p1, p0, Lcom/cbs/app/view/TwitterWebOAuthActivity$2;->a:Lcom/cbs/app/view/TwitterWebOAuthActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 145
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 146
    iget-object v0, p0, Lcom/cbs/app/view/TwitterWebOAuthActivity$2;->a:Lcom/cbs/app/view/TwitterWebOAuthActivity;

    invoke-virtual {v0}, Lcom/cbs/app/view/TwitterWebOAuthActivity;->finish()V

    .line 147
    return-void
.end method
