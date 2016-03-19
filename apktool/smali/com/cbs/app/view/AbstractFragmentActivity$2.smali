.class final Lcom/cbs/app/view/AbstractFragmentActivity$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cbs/app/view/AbstractFragmentActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cbs/app/view/AbstractFragmentActivity;


# direct methods
.method constructor <init>(Lcom/cbs/app/view/AbstractFragmentActivity;)V
    .locals 0

    .prologue
    .line 262
    iput-object p1, p0, Lcom/cbs/app/view/AbstractFragmentActivity$2;->a:Lcom/cbs/app/view/AbstractFragmentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Lcom/cbs/app/view/AbstractFragmentActivity$2;->a:Lcom/cbs/app/view/AbstractFragmentActivity;

    invoke-virtual {v0}, Lcom/cbs/app/view/AbstractFragmentActivity;->a()V

    .line 265
    return-void
.end method
