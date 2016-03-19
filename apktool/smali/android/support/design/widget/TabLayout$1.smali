.class final Landroid/support/design/widget/TabLayout$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/widget/TabLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/design/widget/TabLayout;


# direct methods
.method constructor <init>(Landroid/support/design/widget/TabLayout;)V
    .locals 0

    .prologue
    .line 661
    iput-object p1, p0, Landroid/support/design/widget/TabLayout$1;->a:Landroid/support/design/widget/TabLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 664
    check-cast p1, Landroid/support/design/widget/TabLayout$e;

    .line 665
    invoke-virtual {p1}, Landroid/support/design/widget/TabLayout$e;->b()Landroid/support/design/widget/TabLayout$c;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout$c;->e()V

    .line 666
    return-void
.end method
