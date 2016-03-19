.class public abstract Lcom/facebook/share/widget/ShareButtonBase;
.super Lcom/facebook/FacebookButtonBase;
.source "SourceFile"


# instance fields
.field private requestCode:I

.field private shareContent:Lcom/facebook/share/model/ShareContent;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILjava/lang/String;)V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 46
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/facebook/FacebookButtonBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILjava/lang/String;)V

    .line 39
    iput v4, p0, Lcom/facebook/share/widget/ShareButtonBase;->requestCode:I

    .line 52
    invoke-virtual {p0}, Lcom/facebook/share/widget/ShareButtonBase;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    iput v4, p0, Lcom/facebook/share/widget/ShareButtonBase;->requestCode:I

    .line 53
    return-void

    .line 52
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/share/widget/ShareButtonBase;->getDefaultRequestCode()I

    move-result v4

    goto :goto_0
.end method


# virtual methods
.method protected configureButton(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    .prologue
    .line 140
    invoke-super {p0, p1, p2, p3, p4}, Lcom/facebook/FacebookButtonBase;->configureButton(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 141
    invoke-virtual {p0}, Lcom/facebook/share/widget/ShareButtonBase;->getShareOnClickListener()Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/share/widget/ShareButtonBase;->setInternalOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 142
    return-void
.end method

.method public getRequestCode()I
    .locals 1

    .prologue
    .line 78
    iget v0, p0, Lcom/facebook/share/widget/ShareButtonBase;->requestCode:I

    return v0
.end method

.method public getShareContent()Lcom/facebook/share/model/ShareContent;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/facebook/share/widget/ShareButtonBase;->shareContent:Lcom/facebook/share/model/ShareContent;

    return-object v0
.end method

.method protected abstract getShareOnClickListener()Landroid/view/View$OnClickListener;
.end method

.method public registerCallback(Lcom/facebook/CallbackManager;Lcom/facebook/FacebookCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/CallbackManager;",
            "Lcom/facebook/FacebookCallback",
            "<",
            "Lcom/facebook/share/Sharer$Result;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 110
    invoke-virtual {p0}, Lcom/facebook/share/widget/ShareButtonBase;->getRequestCode()I

    move-result v0

    invoke-static {v0, p1, p2}, Lcom/facebook/share/internal/ShareInternalUtility;->registerSharerCallback(ILcom/facebook/CallbackManager;Lcom/facebook/FacebookCallback;)V

    .line 111
    return-void
.end method

.method public registerCallback(Lcom/facebook/CallbackManager;Lcom/facebook/FacebookCallback;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/CallbackManager;",
            "Lcom/facebook/FacebookCallback",
            "<",
            "Lcom/facebook/share/Sharer$Result;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 130
    invoke-virtual {p0, p3}, Lcom/facebook/share/widget/ShareButtonBase;->setRequestCode(I)V

    .line 131
    invoke-virtual {p0, p1, p2}, Lcom/facebook/share/widget/ShareButtonBase;->registerCallback(Lcom/facebook/CallbackManager;Lcom/facebook/FacebookCallback;)V

    .line 132
    return-void
.end method

.method protected setRequestCode(I)V
    .locals 3

    .prologue
    .line 90
    invoke-static {p1}, Lcom/facebook/FacebookSdk;->isFacebookRequestCode(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Request code "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " cannot be within the range reserved by the Facebook SDK."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 94
    :cond_0
    iput p1, p0, Lcom/facebook/share/widget/ShareButtonBase;->requestCode:I

    .line 95
    return-void
.end method

.method public setShareContent(Lcom/facebook/share/model/ShareContent;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lcom/facebook/share/widget/ShareButtonBase;->shareContent:Lcom/facebook/share/model/ShareContent;

    .line 69
    return-void
.end method
