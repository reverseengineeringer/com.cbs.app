.class final Lcom/cbs/app/widget/HorizontalListView$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cbs/app/widget/HorizontalListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/cbs/app/widget/HorizontalListView;


# direct methods
.method constructor <init>(Lcom/cbs/app/widget/HorizontalListView;)V
    .locals 0

    .prologue
    .line 354
    iput-object p1, p0, Lcom/cbs/app/widget/HorizontalListView$a;->a:Lcom/cbs/app/widget/HorizontalListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 358
    iget-object v0, p0, Lcom/cbs/app/widget/HorizontalListView$a;->a:Lcom/cbs/app/widget/HorizontalListView;

    invoke-virtual {v0}, Lcom/cbs/app/widget/HorizontalListView;->requestLayout()V

    .line 359
    return-void
.end method
