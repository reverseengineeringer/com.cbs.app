.class public Lcom/cbs/app/adapter/HomeMarqueeFragmentAdapter;
.super Landroid/support/v4/app/FragmentStatePagerAdapter;
.source "SourceFile"

# interfaces
.implements Lcom/viewpagerindicator/a;


# instance fields
.field private a:[Lcom/cbs/app/view/model/DeviceHome;


# direct methods
.method public constructor <init>(Landroid/support/v4/app/FragmentManager;[Lcom/cbs/app/view/model/DeviceHome;)V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0, p1}, Landroid/support/v4/app/FragmentStatePagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    .line 22
    if-eqz p2, :cond_0

    .line 23
    invoke-virtual {p2}, [Lcom/cbs/app/view/model/DeviceHome;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/cbs/app/view/model/DeviceHome;

    iput-object v0, p0, Lcom/cbs/app/adapter/HomeMarqueeFragmentAdapter;->a:[Lcom/cbs/app/view/model/DeviceHome;

    .line 25
    :cond_0
    return-void
.end method


# virtual methods
.method public final a(I)Lcom/cbs/app/view/model/DeviceHome;
    .locals 2

    .prologue
    .line 28
    const/4 v0, 0x0

    .line 29
    iget-object v1, p0, Lcom/cbs/app/adapter/HomeMarqueeFragmentAdapter;->a:[Lcom/cbs/app/view/model/DeviceHome;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/cbs/app/adapter/HomeMarqueeFragmentAdapter;->a:[Lcom/cbs/app/view/model/DeviceHome;

    array-length v1, v1

    if-eqz v1, :cond_0

    .line 30
    iget-object v0, p0, Lcom/cbs/app/adapter/HomeMarqueeFragmentAdapter;->a:[Lcom/cbs/app/view/model/DeviceHome;

    iget-object v1, p0, Lcom/cbs/app/adapter/HomeMarqueeFragmentAdapter;->a:[Lcom/cbs/app/view/model/DeviceHome;

    array-length v1, v1

    rem-int v1, p1, v1

    aget-object v0, v0, v1

    .line 32
    :cond_0
    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/cbs/app/adapter/HomeMarqueeFragmentAdapter;->a:[Lcom/cbs/app/view/model/DeviceHome;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cbs/app/adapter/HomeMarqueeFragmentAdapter;->a:[Lcom/cbs/app/view/model/DeviceHome;

    array-length v0, v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const v0, 0x7fffffff

    goto :goto_0
.end method

.method public getDeviceHomeCount()I
    .locals 2

    .prologue
    .line 36
    const/4 v0, 0x0

    .line 37
    iget-object v1, p0, Lcom/cbs/app/adapter/HomeMarqueeFragmentAdapter;->a:[Lcom/cbs/app/view/model/DeviceHome;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/cbs/app/adapter/HomeMarqueeFragmentAdapter;->a:[Lcom/cbs/app/view/model/DeviceHome;

    array-length v1, v1

    if-eqz v1, :cond_0

    .line 38
    iget-object v0, p0, Lcom/cbs/app/adapter/HomeMarqueeFragmentAdapter;->a:[Lcom/cbs/app/view/model/DeviceHome;

    array-length v0, v0

    .line 40
    :cond_0
    return v0
.end method

.method public final getIconResId$134621()I
    .locals 1

    .prologue
    .line 70
    const/4 v0, 0x0

    return v0
.end method

.method public getItem(I)Landroid/support/v4/app/Fragment;
    .locals 2

    .prologue
    .line 45
    const/4 v0, 0x0

    .line 46
    iget-object v1, p0, Lcom/cbs/app/adapter/HomeMarqueeFragmentAdapter;->a:[Lcom/cbs/app/view/model/DeviceHome;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/cbs/app/adapter/HomeMarqueeFragmentAdapter;->a:[Lcom/cbs/app/view/model/DeviceHome;

    array-length v1, v1

    if-eqz v1, :cond_0

    .line 47
    iget-object v0, p0, Lcom/cbs/app/adapter/HomeMarqueeFragmentAdapter;->a:[Lcom/cbs/app/view/model/DeviceHome;

    iget-object v1, p0, Lcom/cbs/app/adapter/HomeMarqueeFragmentAdapter;->a:[Lcom/cbs/app/view/model/DeviceHome;

    array-length v1, v1

    rem-int v1, p1, v1

    aget-object v0, v0, v1

    invoke-static {v0}, Lcom/cbs/app/view/fragments/HomeMarqueeFragment;->a(Lcom/cbs/app/view/model/DeviceHome;)Lcom/cbs/app/view/fragments/HomeMarqueeFragment;

    move-result-object v0

    .line 49
    iget-object v1, p0, Lcom/cbs/app/adapter/HomeMarqueeFragmentAdapter;->a:[Lcom/cbs/app/view/model/DeviceHome;

    array-length v1, v1

    rem-int v1, p1, v1

    invoke-virtual {v0, v1}, Lcom/cbs/app/view/fragments/HomeMarqueeFragment;->setPosition(I)V

    .line 51
    :cond_0
    return-object v0
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 61
    const-string v0, ""

    .line 62
    iget-object v1, p0, Lcom/cbs/app/adapter/HomeMarqueeFragmentAdapter;->a:[Lcom/cbs/app/view/model/DeviceHome;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/cbs/app/adapter/HomeMarqueeFragmentAdapter;->a:[Lcom/cbs/app/view/model/DeviceHome;

    array-length v1, v1

    if-lez v1, :cond_0

    .line 63
    iget-object v0, p0, Lcom/cbs/app/adapter/HomeMarqueeFragmentAdapter;->a:[Lcom/cbs/app/view/model/DeviceHome;

    iget-object v1, p0, Lcom/cbs/app/adapter/HomeMarqueeFragmentAdapter;->a:[Lcom/cbs/app/view/model/DeviceHome;

    array-length v1, v1

    rem-int v1, p1, v1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/cbs/app/view/model/DeviceHome;->getType()Ljava/lang/String;

    move-result-object v0

    .line 65
    :cond_0
    return-object v0
.end method
