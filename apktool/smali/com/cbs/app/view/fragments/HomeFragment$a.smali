.class final Lcom/cbs/app/view/fragments/HomeFragment$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/cbs/app/androiddata/ResponseModelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cbs/app/view/fragments/HomeFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/cbs/app/view/fragments/HomeFragment;


# direct methods
.method private constructor <init>(Lcom/cbs/app/view/fragments/HomeFragment;)V
    .locals 0

    .prologue
    .line 849
    iput-object p1, p0, Lcom/cbs/app/view/fragments/HomeFragment$a;->a:Lcom/cbs/app/view/fragments/HomeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/cbs/app/view/fragments/HomeFragment;B)V
    .locals 0

    .prologue
    .line 849
    invoke-direct {p0, p1}, Lcom/cbs/app/view/fragments/HomeFragment$a;-><init>(Lcom/cbs/app/view/fragments/HomeFragment;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 858
    iget-object v0, p0, Lcom/cbs/app/view/fragments/HomeFragment$a;->a:Lcom/cbs/app/view/fragments/HomeFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/cbs/app/view/fragments/HomeFragment;->a(Lcom/cbs/app/androiddata/ResponseModel;)V

    .line 859
    return-void
.end method

.method public final a(Lcom/cbs/app/androiddata/ResponseModel;)V
    .locals 1

    .prologue
    .line 853
    iget-object v0, p0, Lcom/cbs/app/view/fragments/HomeFragment$a;->a:Lcom/cbs/app/view/fragments/HomeFragment;

    invoke-virtual {v0, p1}, Lcom/cbs/app/view/fragments/HomeFragment;->a(Lcom/cbs/app/androiddata/ResponseModel;)V

    .line 854
    return-void
.end method
