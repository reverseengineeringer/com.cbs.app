.class public Lcom/cbs/app/widget/GridViewWithHeaderBaseAdapter$ListItemClickListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cbs/app/widget/GridViewWithHeaderBaseAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ListItemClickListener"
.end annotation


# instance fields
.field final synthetic a:Lcom/cbs/app/widget/GridViewWithHeaderBaseAdapter;

.field private final b:I


# direct methods
.method public constructor <init>(Lcom/cbs/app/widget/GridViewWithHeaderBaseAdapter;I)V
    .locals 0

    .prologue
    .line 156
    iput-object p1, p0, Lcom/cbs/app/widget/GridViewWithHeaderBaseAdapter$ListItemClickListener;->a:Lcom/cbs/app/widget/GridViewWithHeaderBaseAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 157
    iput p2, p0, Lcom/cbs/app/widget/GridViewWithHeaderBaseAdapter$ListItemClickListener;->b:I

    .line 158
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 162
    iget-object v0, p0, Lcom/cbs/app/widget/GridViewWithHeaderBaseAdapter$ListItemClickListener;->a:Lcom/cbs/app/widget/GridViewWithHeaderBaseAdapter;

    iget v1, p0, Lcom/cbs/app/widget/GridViewWithHeaderBaseAdapter$ListItemClickListener;->b:I

    invoke-static {v0, p1, v1}, Lcom/cbs/app/widget/GridViewWithHeaderBaseAdapter;->a(Lcom/cbs/app/widget/GridViewWithHeaderBaseAdapter;Landroid/view/View;I)V

    .line 163
    return-void
.end method
