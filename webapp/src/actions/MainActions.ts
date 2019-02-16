import {Action, ActionCreator} from 'redux';

export const TOGGLE_DARK_MODE = 'TOGGLE_DARK_MODE';

export interface IToggleDarkModeAction extends Action {
    type: 'TOGGLE_DARK_MODE';
}

export const toggleDarkModeAction: ActionCreator<IToggleDarkModeAction> = () => ({
    type: TOGGLE_DARK_MODE
});

export type MainActions = IToggleDarkModeAction;