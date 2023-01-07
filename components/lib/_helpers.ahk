#NoEnv
#SingleInstance, Force
SendMode, Input
SetBatchLines, -1

class Shared
{
     /**
     * Constructor for the MouseHelper class.
     */
    __New()
    {
        ; This method does not need to do anything, so it can be left empty.
    }

    ; Random function for delays inbetween actions
    ran(min,max) {
        random, ran, min, max
        return ran
    }

}

class Timers
{
     /**
     * Constructor for the MouseHelper class.
     */
    __New()
    {
        ; This method does not need to do anything, so it can be left empty.
    }

    ; Random function for delays inbetween actions
    ran(min,max) {
        random, ran, min, max
        return ran
    }

}

class MouseHelper
{
    /**
     * Constructor for the MouseHelper class.
     */
    __New()
    {
        ; This method does not need to do anything, so it can be left empty.
    }

    ; Helper method for performing click actions with a type
    Click(click_type)
    {
        Send {Click down %click_type%}
        Send {Click up %click_type%}
        Sleep, % Shared.ran(1,2)
    }

    ; Helper function to perform a left click.
    LeftClick() {
        Send {Click down}
        Send {Click up}
        Sleep, % Shared.ran(1,2)
    }

    ; Helper function to perform a right click.
    RightClick() {
        Send {Click down Right}
        Send {Click up Right}
        Sleep % Shared.ran(1,2)
    }
}