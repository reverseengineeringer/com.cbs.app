.class abstract Lcom/urbanairship/preference/QuietTimePickerPreference;
.super Landroid/preference/DialogPreference;
.source "SourceFile"

# interfaces
.implements Lcom/urbanairship/preference/a;


# instance fields
.field private a:Landroid/widget/TimePicker;

.field private b:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/urbanairship/preference/QuietTimePickerPreference;->a:Landroid/widget/TimePicker;

    .line 43
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/urbanairship/preference/QuietTimePickerPreference;->b:J

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .prologue
    .line 47
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/urbanairship/preference/QuietTimePickerPreference;->a:Landroid/widget/TimePicker;

    .line 43
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/urbanairship/preference/QuietTimePickerPreference;->b:J

    .line 48
    return-void
.end method

.method private c()Ljava/util/Calendar;
    .locals 6

    .prologue
    .line 100
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 102
    iget-wide v2, p0, Lcom/urbanairship/preference/QuietTimePickerPreference;->b:J

    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    .line 103
    iget-wide v2, p0, Lcom/urbanairship/preference/QuietTimePickerPreference;->b:J

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 106
    :cond_0
    return-object v0
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 2

    .prologue
    .line 91
    invoke-virtual {p0}, Lcom/urbanairship/preference/QuietTimePickerPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v0

    invoke-direct {p0}, Lcom/urbanairship/preference/QuietTimePickerPreference;->c()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public synthetic getSummary()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 41
    invoke-virtual {p0}, Lcom/urbanairship/preference/QuietTimePickerPreference;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onCreateDialogView()Landroid/view/View;
    .locals 3

    .prologue
    .line 63
    new-instance v0, Landroid/widget/TimePicker;

    invoke-virtual {p0}, Lcom/urbanairship/preference/QuietTimePickerPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TimePicker;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/urbanairship/preference/QuietTimePickerPreference;->a:Landroid/widget/TimePicker;

    .line 65
    iget-object v0, p0, Lcom/urbanairship/preference/QuietTimePickerPreference;->a:Landroid/widget/TimePicker;

    invoke-virtual {p0}, Lcom/urbanairship/preference/QuietTimePickerPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TimePicker;->setIs24HourView(Ljava/lang/Boolean;)V

    .line 67
    invoke-direct {p0}, Lcom/urbanairship/preference/QuietTimePickerPreference;->c()Ljava/util/Calendar;

    move-result-object v0

    .line 68
    iget-object v1, p0, Lcom/urbanairship/preference/QuietTimePickerPreference;->a:Landroid/widget/TimePicker;

    const/16 v2, 0xb

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    .line 69
    iget-object v1, p0, Lcom/urbanairship/preference/QuietTimePickerPreference;->a:Landroid/widget/TimePicker;

    const/16 v2, 0xc

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    .line 71
    iget-object v0, p0, Lcom/urbanairship/preference/QuietTimePickerPreference;->a:Landroid/widget/TimePicker;

    return-object v0
.end method

.method public onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .prologue
    .line 56
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 57
    invoke-virtual {p0}, Lcom/urbanairship/preference/QuietTimePickerPreference;->a()Lcom/urbanairship/preference/a$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/urbanairship/preference/a$a;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 58
    return-object v0
.end method

.method public onDialogClosed(Z)V
    .locals 3

    .prologue
    .line 76
    if-eqz p1, :cond_0

    .line 77
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 78
    const/16 v1, 0xb

    iget-object v2, p0, Lcom/urbanairship/preference/QuietTimePickerPreference;->a:Landroid/widget/TimePicker;

    invoke-virtual {v2}, Landroid/widget/TimePicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 79
    const/16 v1, 0xc

    iget-object v2, p0, Lcom/urbanairship/preference/QuietTimePickerPreference;->a:Landroid/widget/TimePicker;

    invoke-virtual {v2}, Landroid/widget/TimePicker;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 81
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    .line 82
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/urbanairship/preference/QuietTimePickerPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 83
    iput-wide v0, p0, Lcom/urbanairship/preference/QuietTimePickerPreference;->b:J

    .line 84
    invoke-virtual {p0}, Lcom/urbanairship/preference/QuietTimePickerPreference;->notifyChanged()V

    .line 87
    :cond_0
    return-void
.end method

.method protected shouldPersist()Z
    .locals 1

    .prologue
    .line 118
    const/4 v0, 0x0

    return v0
.end method
