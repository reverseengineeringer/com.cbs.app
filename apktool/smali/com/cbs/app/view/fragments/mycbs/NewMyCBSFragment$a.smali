.class final Lcom/cbs/app/view/fragments/mycbs/NewMyCBSFragment$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/TabHost$TabContentFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cbs/app/view/fragments/mycbs/NewMyCBSFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private final a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 545
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 546
    iput-object p1, p0, Lcom/cbs/app/view/fragments/mycbs/NewMyCBSFragment$a;->a:Landroid/content/Context;

    .line 547
    return-void
.end method


# virtual methods
.method public final createTabContent(Ljava/lang/String;)Landroid/view/View;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 550
    new-instance v0, Landroid/view/View;

    iget-object v1, p0, Lcom/cbs/app/view/fragments/mycbs/NewMyCBSFragment$a;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 551
    invoke-virtual {v0, v2}, Landroid/view/View;->setMinimumWidth(I)V

    .line 552
    invoke-virtual {v0, v2}, Landroid/view/View;->setMinimumHeight(I)V

    .line 553
    return-object v0
.end method
