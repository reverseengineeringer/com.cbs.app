.class final Lcom/urbanairship/push/iam/view/b$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/urbanairship/push/iam/view/b;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/urbanairship/push/iam/view/b;


# direct methods
.method constructor <init>(Lcom/urbanairship/push/iam/view/b;)V
    .locals 0

    .prologue
    .line 95
    iput-object p1, p0, Lcom/urbanairship/push/iam/view/b$1;->a:Lcom/urbanairship/push/iam/view/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/urbanairship/push/iam/view/b$1;->a:Lcom/urbanairship/push/iam/view/b;

    invoke-static {v0}, Lcom/urbanairship/push/iam/view/b;->a(Lcom/urbanairship/push/iam/view/b;)Lcom/urbanairship/push/iam/view/a$b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/urbanairship/push/iam/view/b$1;->a:Lcom/urbanairship/push/iam/view/b;

    invoke-static {v0}, Lcom/urbanairship/push/iam/view/b;->a(Lcom/urbanairship/push/iam/view/b;)Lcom/urbanairship/push/iam/view/a$b;

    move-result-object v0

    invoke-interface {v0}, Lcom/urbanairship/push/iam/view/a$b;->a()V

    .line 101
    :cond_0
    return-void
.end method
