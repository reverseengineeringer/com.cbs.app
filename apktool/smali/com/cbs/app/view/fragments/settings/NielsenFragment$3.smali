.class final Lcom/cbs/app/view/fragments/settings/NielsenFragment$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cbs/app/view/fragments/settings/NielsenFragment;->a()V
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
    .line 111
    iput-object p1, p0, Lcom/cbs/app/view/fragments/settings/NielsenFragment$3;->a:Lcom/cbs/app/view/fragments/settings/NielsenFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 114
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 115
    iget-object v0, p0, Lcom/cbs/app/view/fragments/settings/NielsenFragment$3;->a:Lcom/cbs/app/view/fragments/settings/NielsenFragment;

    invoke-virtual {v0}, Lcom/cbs/app/view/fragments/settings/NielsenFragment;->e()V

    .line 116
    return-void
.end method
