.class public final Landroid/support/design/widget/TabLayout$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/design/widget/TabLayout$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/widget/TabLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "f"
.end annotation


# instance fields
.field private final a:Landroid/support/v4/view/ViewPager;


# direct methods
.method public constructor <init>(Landroid/support/v4/view/ViewPager;)V
    .locals 0

    .prologue
    .line 1772
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1773
    iput-object p1, p0, Landroid/support/design/widget/TabLayout$f;->a:Landroid/support/v4/view/ViewPager;

    .line 1774
    return-void
.end method


# virtual methods
.method public final a(Landroid/support/design/widget/TabLayout$c;)V
    .locals 2

    .prologue
    .line 1778
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$f;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {p1}, Landroid/support/design/widget/TabLayout$c;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 1779
    return-void
.end method
