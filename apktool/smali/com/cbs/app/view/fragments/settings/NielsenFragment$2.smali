.class final Lcom/cbs/app/view/fragments/settings/NielsenFragment$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cbs/app/view/fragments/settings/NielsenFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
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
    .line 96
    iput-object p1, p0, Lcom/cbs/app/view/fragments/settings/NielsenFragment$2;->a:Lcom/cbs/app/view/fragments/settings/NielsenFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/cbs/app/view/fragments/settings/NielsenFragment$2;->a:Lcom/cbs/app/view/fragments/settings/NielsenFragment;

    invoke-static {v0}, Lcom/cbs/app/view/fragments/settings/NielsenFragment;->a(Lcom/cbs/app/view/fragments/settings/NielsenFragment;)V

    .line 99
    return-void
.end method
