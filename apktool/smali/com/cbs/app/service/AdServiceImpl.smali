.class public Lcom/cbs/app/service/AdServiceImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/cbs/app/service/AdService;


# static fields
.field public static final a:Ljava/lang/String;

.field private static final b:[Ljava/lang/String;

.field private static final c:[Ljava/lang/String;

.field private static d:Ljava/util/Random;

.field private static e:Ljava/util/Random;

.field private static f:Ljava/lang/String;

.field private static g:Ljava/lang/String;


# instance fields
.field private h:Lcom/google/android/gms/ads/a;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 35
    const-class v0, Lcom/cbs/app/service/AdServiceImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cbs/app/service/AdServiceImpl;->a:Ljava/lang/String;

    .line 37
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "a"

    aput-object v1, v0, v2

    const-string v1, "b"

    aput-object v1, v0, v3

    const-string v1, "c"

    aput-object v1, v0, v4

    const-string v1, "d"

    aput-object v1, v0, v5

    sput-object v0, Lcom/cbs/app/service/AdServiceImpl;->b:[Ljava/lang/String;

    .line 38
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "1"

    aput-object v1, v0, v2

    const-string v1, "2"

    aput-object v1, v0, v3

    const-string v1, "3"

    aput-object v1, v0, v4

    const-string v1, "4"

    aput-object v1, v0, v5

    sput-object v0, Lcom/cbs/app/service/AdServiceImpl;->c:[Ljava/lang/String;

    .line 41
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/cbs/app/service/AdServiceImpl;->d:Ljava/util/Random;

    .line 42
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/cbs/app/service/AdServiceImpl;->e:Ljava/util/Random;

    .line 44
    const/4 v0, 0x0

    sput-object v0, Lcom/cbs/app/service/AdServiceImpl;->f:Ljava/lang/String;

    .line 45
    const/4 v0, 0x0

    sput-object v0, Lcom/cbs/app/service/AdServiceImpl;->g:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Lcom/cbs/app/service/AdServiceImpl$1;

    invoke-direct {v0, p0}, Lcom/cbs/app/service/AdServiceImpl$1;-><init>(Lcom/cbs/app/service/AdServiceImpl;)V

    iput-object v0, p0, Lcom/cbs/app/service/AdServiceImpl;->h:Lcom/google/android/gms/ads/a;

    return-void
.end method

.method private static a(Landroid/content/Context;Lcom/google/android/gms/ads/d;)Lcom/google/android/gms/ads/AdView;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 102
    invoke-static {}, Lcom/cbs/app/manager/StatusManager;->getAdServer()Ljava/lang/String;

    move-result-object v0

    .line 105
    new-instance v1, Lcom/google/android/gms/ads/AdView;

    invoke-direct {v1, p0}, Lcom/google/android/gms/ads/AdView;-><init>(Landroid/content/Context;)V

    .line 107
    if-nez p1, :cond_1

    .line 108
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v2, "test"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f08025c

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 113
    :goto_0
    sget-object v2, Lcom/google/android/gms/ads/d;->a:Lcom/google/android/gms/ads/d;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/ads/AdView;->setAdSize(Lcom/google/android/gms/ads/d;)V

    .line 122
    :goto_1
    invoke-virtual {v1, v0}, Lcom/google/android/gms/ads/AdView;->setAdUnitId(Ljava/lang/String;)V

    .line 123
    invoke-virtual {v1, v3}, Lcom/google/android/gms/ads/AdView;->setEnabled(Z)V

    .line 124
    invoke-virtual {v1, v3}, Lcom/google/android/gms/ads/AdView;->setClickable(Z)V

    .line 125
    invoke-virtual {v1, v3}, Lcom/google/android/gms/ads/AdView;->setHovered(Z)V

    .line 127
    return-object v1

    .line 111
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0801f6

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 115
    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v2, "test"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 116
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f08025b

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 120
    :goto_2
    invoke-virtual {v1, p1}, Lcom/google/android/gms/ads/AdView;->setAdSize(Lcom/google/android/gms/ads/d;)V

    goto :goto_1

    .line 118
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0801f5

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method

.method public static a()V
    .locals 3

    .prologue
    .line 238
    sget-object v0, Lcom/cbs/app/service/AdServiceImpl;->b:[Ljava/lang/String;

    sget-object v1, Lcom/cbs/app/service/AdServiceImpl;->d:Ljava/util/Random;

    sget-object v2, Lcom/cbs/app/service/AdServiceImpl;->b:[Ljava/lang/String;

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    aget-object v0, v0, v1

    sput-object v0, Lcom/cbs/app/service/AdServiceImpl;->f:Ljava/lang/String;

    .line 239
    sget-object v0, Lcom/cbs/app/service/AdServiceImpl;->c:[Ljava/lang/String;

    sget-object v1, Lcom/cbs/app/service/AdServiceImpl;->e:Ljava/util/Random;

    sget-object v2, Lcom/cbs/app/service/AdServiceImpl;->c:[Ljava/lang/String;

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    aget-object v0, v0, v1

    sput-object v0, Lcom/cbs/app/service/AdServiceImpl;->g:Ljava/lang/String;

    .line 241
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "refreshAdSessionId: session + subses "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/cbs/app/service/AdServiceImpl;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/cbs/app/service/AdServiceImpl;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    return-void
.end method

.method private static a(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/google/android/gms/ads/AdView;)V
    .locals 4

    .prologue
    const/4 v2, -0x1

    const/4 v3, 0x0

    .line 132
    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 134
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 135
    const/high16 v1, 0x42480000    # 50.0f

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    .line 137
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 139
    instance-of v1, v1, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v1, :cond_0

    .line 140
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v2, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    move-object v0, v1

    .line 141
    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v2, 0x51

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 148
    :goto_0
    const v0, 0x7f0f0004

    invoke-virtual {p2, v0}, Lcom/google/android/gms/ads/AdView;->setId(I)V

    .line 149
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 150
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 151
    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->setClickable(Z)V

    .line 152
    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->setEnabled(Z)V

    .line 153
    invoke-virtual {p1}, Landroid/view/ViewGroup;->clearFocus()V

    .line 154
    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->setHovered(Z)V

    .line 155
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->clearChildFocus(Landroid/view/View;)V

    .line 156
    return-void

    .line 143
    :cond_0
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    move-object v0, v1

    .line 144
    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    move-object v0, v1

    .line 145
    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v2, 0xc

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_0
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/ads/AdView;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 159
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 162
    if-eqz v0, :cond_1

    .line 163
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 164
    const-string v2, "APP_VERSION"

    const-string v3, "2.9.0"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    const-string v2, "OriginPage"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    if-eqz p4, :cond_0

    .line 167
    const-string v2, "Show_ID"

    invoke-static {p4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    :cond_0
    const-string v2, "session"

    sget-object v3, Lcom/cbs/app/service/AdServiceImpl;->f:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    const-string v2, "subses"

    sget-object v3, Lcom/cbs/app/service/AdServiceImpl;->g:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    invoke-static {}, Lcom/cbs/app/manager/AuthStatusManager;->getUserAuthStatus()Lcom/cbs/app/view/model/rest/AuthStatusEndpointResponse;

    move-result-object v2

    .line 175
    invoke-static {v2}, Lcom/cbs/app/view/utils/Util;->a(Lcom/cbs/app/view/model/rest/AuthStatusEndpointResponse;)Ljava/lang/String;

    move-result-object v2

    .line 177
    const-string v3, "sb"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    new-instance v2, Lcom/google/android/gms/ads/c$a;

    invoke-direct {v2}, Lcom/google/android/gms/ads/c$a;-><init>()V

    sget-object v3, Lcom/google/android/gms/ads/c;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/ads/c$a;->b(Ljava/lang/String;)Lcom/google/android/gms/ads/c$a;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/ads/c$a;->b(Ljava/lang/String;)Lcom/google/android/gms/ads/c$a;

    move-result-object v0

    new-instance v2, Lcom/google/android/gms/ads/b/a/a;

    invoke-direct {v2, v1}, Lcom/google/android/gms/ads/b/a/a;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v0, v2}, Lcom/google/android/gms/ads/c$a;->a(Lcom/google/android/gms/ads/b/m;)Lcom/google/android/gms/ads/c$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/c$a;->a()Lcom/google/android/gms/ads/c;

    move-result-object v0

    .line 186
    iget-object v1, p0, Lcom/cbs/app/service/AdServiceImpl;->h:Lcom/google/android/gms/ads/a;

    invoke-virtual {p3, v1}, Lcom/google/android/gms/ads/AdView;->setAdListener(Lcom/google/android/gms/ads/a;)V

    .line 187
    invoke-virtual {p3, v0}, Lcom/google/android/gms/ads/AdView;->a(Lcom/google/android/gms/ads/c;)V

    .line 189
    :cond_1
    return-void
.end method

.method public static a(Landroid/view/ViewGroup;)V
    .locals 4

    .prologue
    .line 194
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 195
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    .line 196
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 197
    instance-of v3, v0, Lcom/google/android/gms/ads/AdView;

    if-eqz v3, :cond_0

    .line 198
    check-cast v0, Lcom/google/android/gms/ads/AdView;

    .line 199
    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdView;->c()V

    .line 195
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 202
    :cond_1
    return-void
.end method

.method public static b(Landroid/view/ViewGroup;)V
    .locals 4

    .prologue
    .line 206
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 207
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    .line 208
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 209
    instance-of v3, v0, Lcom/google/android/gms/ads/AdView;

    if-eqz v3, :cond_0

    .line 210
    check-cast v0, Lcom/google/android/gms/ads/AdView;

    .line 211
    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdView;->b()V

    .line 207
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 214
    :cond_1
    return-void
.end method

.method public static c(Landroid/view/ViewGroup;)V
    .locals 4

    .prologue
    .line 218
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 219
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    .line 220
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 221
    instance-of v3, v0, Lcom/google/android/gms/ads/AdView;

    if-eqz v3, :cond_0

    .line 222
    check-cast v0, Lcom/google/android/gms/ads/AdView;

    .line 223
    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdView;->a()V

    .line 219
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 227
    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 230
    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Landroid/view/ViewGroup;JLjava/lang/String;)V
    .locals 3

    .prologue
    .line 93
    if-eqz p1, :cond_0

    .line 94
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/cbs/app/service/AdServiceImpl;->a(Landroid/content/Context;Lcom/google/android/gms/ads/d;)Lcom/google/android/gms/ads/AdView;

    move-result-object v0

    .line 95
    invoke-static {p1, p2, v0}, Lcom/cbs/app/service/AdServiceImpl;->a(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/google/android/gms/ads/AdView;)V

    .line 96
    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, p5, v0, v1}, Lcom/cbs/app/service/AdServiceImpl;->a(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/ads/AdView;Ljava/lang/String;)V

    .line 98
    :cond_0
    return-void
.end method

.method public final a(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 73
    if-eqz p1, :cond_0

    .line 74
    new-instance v0, Lcom/google/android/gms/ads/d;

    const/16 v1, 0x89

    const/16 v2, 0x25

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/ads/d;-><init>(II)V

    .line 75
    invoke-static {p1, v0}, Lcom/cbs/app/service/AdServiceImpl;->a(Landroid/content/Context;Lcom/google/android/gms/ads/d;)Lcom/google/android/gms/ads/AdView;

    move-result-object v0

    .line 76
    invoke-static {p1, p2, v0}, Lcom/cbs/app/service/AdServiceImpl;->a(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/google/android/gms/ads/AdView;)V

    .line 77
    const/4 v1, 0x0

    invoke-direct {p0, p1, p3, v0, v1}, Lcom/cbs/app/service/AdServiceImpl;->a(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/ads/AdView;Ljava/lang/String;)V

    .line 79
    :cond_0
    return-void
.end method

.method public final b(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 83
    if-eqz p1, :cond_0

    .line 84
    invoke-static {p1, v1}, Lcom/cbs/app/service/AdServiceImpl;->a(Landroid/content/Context;Lcom/google/android/gms/ads/d;)Lcom/google/android/gms/ads/AdView;

    move-result-object v0

    .line 85
    invoke-static {p1, p2, v0}, Lcom/cbs/app/service/AdServiceImpl;->a(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/google/android/gms/ads/AdView;)V

    .line 86
    invoke-direct {p0, p1, p3, v0, v1}, Lcom/cbs/app/service/AdServiceImpl;->a(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/ads/AdView;Ljava/lang/String;)V

    .line 88
    :cond_0
    return-void
.end method
